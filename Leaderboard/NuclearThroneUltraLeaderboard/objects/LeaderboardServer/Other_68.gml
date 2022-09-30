/// @description Networking

var type = async_load[? "type"];
show_debug_message("network: " + string(type));
if (type == network_type_non_blocking_connect || type == network_type_connect) 
{
	show_debug_message("has connected");
	//I am host and I detect a new guy
	var socket = async_load[? "socket"];
	show_debug_message("socket connected: "+string(socket));
	var sendBuffer = buffer_create(3,buffer_fixed,1);
	buffer_write(sendBuffer,buffer_u8,NETDATA.CLIENT_ID);
	buffer_write(sendBuffer,buffer_u16,socket);
	network_send_packet(socket, sendBuffer, buffer_get_size(sendBuffer));
	buffer_delete(sendBuffer);
}
//Data to act on
if (type == network_type_data) {
	var buffer = async_load[? "buffer"];

	buffer_seek(buffer, buffer_seek_start, 0);
	var data = buffer_read(buffer, buffer_u8);
	switch(data)
	{
		//Receiving score
		case NETDATA.SCORE:
			var socket = buffer_read(buffer, buffer_u16);
			show_debug_message("send to socket: "+string(socket));
			var newScore = [];
			newScore[0] = buffer_read(buffer, buffer_u64);//Kills
			newScore[1] = buffer_read(buffer,buffer_string);//Username
			newScore[2] = buffer_read(buffer,buffer_u8)//area
			newScore[3] = buffer_read(buffer,buffer_u8)//subarea
			newScore[4] = buffer_read(buffer,buffer_u8)//loops technically limited to loop 255
			newScore[5] = buffer_read(buffer,buffer_u8)//race
			newScore[6] = buffer_read(buffer,buffer_u8)//bskin
			newScore[7] = buffer_read(buffer,buffer_bool)//altUltra
			newScore[8] = buffer_read(buffer,buffer_u16);//wep
			newScore[9] = buffer_read(buffer,buffer_u16);//bwep
			newScore[10] = buffer_read(buffer,buffer_u16);//cwep
			newScore[11] = buffer_read(buffer,buffer_u8);//crown
			newScore[12] = buffer_read(buffer,buffer_u8);//ultra mutation 255 is none
			show_debug_message("received score: " + string(newScore));
			var scoreString = "";
			for (var i = 0; i < array_length(newScore); i++)
			{
				scoreString += string(newScore[i])+" ";
			}
			show_debug_message("string: " + scoreString);
			var scoreSorter = ds_list_create();
			var scoreList = ds_list_create();
			ini_open(dailyScoreSaveFileString);
				//Get existing
				var i = 0;
				while(ini_key_exists("scorelb",i))
				{
					var newEntry = ini_read_string("scorelb",i,"");
					show_debug_message(newEntry);
					//First entry must be kills
					var killsString = string_copy(newEntry,1,string_pos(" ",newEntry));
					ds_list_add(scoreSorter,real(killsString));
					ds_list_add(scoreList,newEntry);
					i++;
					//split on _ then split on | and take second entry thats the kills
				}
				
				//And add the new one
				ds_list_add(scoreSorter,newScore[0]);
				ds_list_add(scoreList,scoreString);
				
				var al = ds_list_size(scoreSorter);
				//Sorting algorithm (bubble)
				for (var i = al; i >= 0; i--)
				{
					for (var j = al; j > al-i; j--)
					{
						if (scoreSorter[| j] > scoreSorter[| j-1]) {
							var swapper = scoreList[| j];
							scoreList[| j] = scoreList[| j - 1]
							scoreList[| j - 1] = swapper;
							var swapperScore = scoreSorter[| j];
							scoreSorter[| j] = scoreSorter[| j - 1]
							scoreSorter[| j - 1] = swapperScore;
						}
					}
				}
				//Rewrite!
				ini_section_delete("scorelb");
				var scoreLeaderboard = "";
				var al = ds_list_size(scoreList);
				for (var i = 0; i < al; i++)
				{
					scoreLeaderboard += scoreList[| i]+"|";
					ini_write_string("scorelb",i,scoreList[| i]);
				}
				
			ini_close();
			
			show_debug_message("leaderboard send: " + scoreLeaderboard);
			var sendBuffer = buffer_create(2,buffer_grow,1);
			buffer_write(sendBuffer,buffer_u8,NETDATA.LEADERBOARD);
			buffer_write(sendBuffer,buffer_string,scoreLeaderboard);
			network_send_packet(socket, sendBuffer, buffer_get_size(sendBuffer));
			buffer_delete(sendBuffer);
			scoreLeaderboard = string_replace_all(scoreLeaderboard,"|","\n");
			leaderboardString = scoreLeaderboard;
		break;
		case NETDATA.LEADERBOARD:
			//Sending leaderboard
			var socket = buffer_read(buffer, buffer_u16);
			var page = buffer_read(buffer, buffer_u8)*10;//Display per 10?
			var sendBuffer = buffer_create(2,buffer_grow,1);
			buffer_write(sendBuffer,buffer_u8,NETDATA.LEADERBOARD);
			ini_open(dailyScoreSaveFileString);
			var i = page;
			var scoreLeaderboard = "";
			while(ini_key_exists("scorelb",i))
			{
				scoreLeaderboard += ini_read_string("scorelb",i,"")+"|";
				i++;
			}
			ini_close();
			buffer_write(sendBuffer,buffer_string,scoreLeaderboard);
			network_send_packet(socket, sendBuffer, buffer_get_size(sendBuffer));
			buffer_delete(sendBuffer);
			leaderboardString = scoreLeaderboard;
		break;
	}
	buffer_delete(buffer);
}