/// @description Networking

var type = async_load[? "type"];
show_debug_message("network: " + string(type));
if (type == network_type_non_blocking_connect || type == network_type_connect) 
{
	show_debug_message("has connected");
	//I am host and I detect a new guy
	var socket = async_load[? "socket"];
	show_debug_message("socket connected: "+string(socket));
	var sendBuffer = buffer_create(7,buffer_fixed,1);
	buffer_write(sendBuffer,buffer_u8,NETDATA.CLIENT_ID);
	buffer_write(sendBuffer,buffer_u16,socket);
	buffer_write(sendBuffer,buffer_u16,todaySeed);
	buffer_write(sendBuffer,buffer_u16,totalDailies);
	network_send_packet(socket, sendBuffer, buffer_get_size(sendBuffer));
	buffer_delete(sendBuffer);
}
//Data to act on
if (type == network_type_data) {
	var buffer = async_load[? "buffer"];

	buffer_seek(buffer, buffer_seek_start, 0);
	var data = buffer_read(buffer, buffer_u8);
	var isScore = true;
	var getScore = true;
	switch(data)
	{
		//Receiving score
		case NETDATA.RACE:
			isScore = false;
			var sendBuffer = buffer_create(7,buffer_grow,1);
			var socket = buffer_read(buffer, buffer_u16);
			buffer_write(sendBuffer,buffer_u8,NETDATA.CONFIRMRACE);
			network_send_packet(socket, sendBuffer, buffer_get_size(sendBuffer));
			buffer_delete(sendBuffer);
		case NETDATA.SCORE:
			if isScore
			var socket = buffer_read(buffer, buffer_u16);
			var wantDay = buffer_read(buffer, buffer_u16);
			show_debug_message("wantDay " + string(wantDay));
			var newScore = [];
			newScore[0] = buffer_read(buffer, buffer_u64);//Kills / frame time
			newScore[1] = buffer_read(buffer,buffer_string);//Username
			if isScore
			{
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
			}
			else
			{
				newScore[2] = buffer_read(buffer,buffer_string)//Route
				newScore[3] = buffer_read(buffer,buffer_u8)//race
				newScore[4] = buffer_read(buffer,buffer_u8)//bskin
				newScore[5] = buffer_read(buffer,buffer_bool)//altUltra
				newScore[6] = buffer_read(buffer,buffer_u16);//wep
				newScore[7] = buffer_read(buffer,buffer_u16);//bwep
				newScore[8] = buffer_read(buffer,buffer_u16);//cwep
				newScore[9] = buffer_read(buffer,buffer_u8);//crown
				newScore[10] = buffer_read(buffer,buffer_u8);//ultra mutation 255 is none
			}
			var scoreString = "";
			for (var i = 0; i < array_length(newScore); i++)
			{
				scoreString += string(newScore[i])+" ";
			}
			var scoreSorter = ds_list_create();
			var scoreList = ds_list_create();
			var stringChecker = "scorelb"
			var fileName;
			if isScore {
				fileName = file_find_first("ds"+string(wantDay) + "_ntultradailyscore*", 0);
				show_debug_message("FILE1score: " + fileName);
				if fileName == ""
				{
					fileName = dailyScoreSaveFileString;
				}
			}
			else {
				fileName = file_find_first(string(wantDay) + "_ntultradailyrace*", 0);
				show_debug_message("FILE1race: " + fileName);
				stringChecker = "racelb";
				if fileName == ""
				{
					fileName = dailyRaceSaveFileString;
				}
			}
			show_debug_message("FILE: " + fileName);
			var scoreLeaderboard = "";
			ini_open(fileName);
				//Get existing
				var i = 0;
				if (file_exists(fileName))
				{
					while(ini_key_exists(stringChecker,i))
					{
						var newEntry = ini_read_string(stringChecker,i,"");
						show_debug_message(newEntry);
						//First entry must be kills
						var killsString = string_copy(newEntry,1,string_pos(" ",newEntry));
						ds_list_add(scoreSorter,real(killsString));
						ds_list_add(scoreList,newEntry);
						i++;
						//split on _ then split on | and take second entry thats the kills
					}
				}
				if isScore
					totalScoreEntries = i;
				else
					totalRaceEntries = i;
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
				//Reverse the list for races
				if !isScore
					ds_list_sort(scoreList,false);
				//Rewrite!
				if (file_exists(fileName))
					ini_section_delete(stringChecker);
				var al = ds_list_size(scoreList);
				for (var i = 0; i < al; i++)
				{
					scoreLeaderboard += scoreList[| i]+"|";
					ini_write_string(stringChecker,i,scoreList[| i]);
				}
				
			ini_close();
			var sendBuffer = buffer_create(8,buffer_grow,1);
			buffer_write(sendBuffer,buffer_u8,NETDATA.LEADERBOARD);
			buffer_write(sendBuffer,buffer_string,scoreLeaderboard);
			//if isScore
			//	buffer_write(sendBuffer,buffer_string,string_split(string_replace(dailyScoreSaveFileString,"ntultra",""),"_")[1]);
			//else
			//	buffer_write(sendBuffer,buffer_string,string_split(string_replace(dailyRaceSaveFileString,"ntultra",""),"_")[1]);
			buffer_write(sendBuffer,buffer_string,string_split(string_replace(fileName,"ntultra",""),"_")[1]);
			buffer_write(sendBuffer,buffer_u16,0);//Page
			if isScore
				buffer_write(sendBuffer,buffer_u16,ceil(totalScoreEntries/10)-1);//Total pages
			else
				buffer_write(sendBuffer,buffer_u16,ceil(totalRaceEntries/10)-1);//Total pages
			buffer_write(sendBuffer,buffer_u16,totalDailies);//Daily number
			network_send_packet(socket, sendBuffer, buffer_get_size(sendBuffer));
			buffer_delete(sendBuffer);
			scoreLeaderboard = string_replace_all(scoreLeaderboard,"|","\n");
			if isScore
				scoreLeaderboardString = scoreLeaderboard;
			else
				raceLeaderboardString = scoreLeaderboard;
		break;
		case NETDATA.LEADERBOARDRACE:
			getScore = false;
			show_debug_message("leaderboard request race ");
		case NETDATA.LEADERBOARD:
			//Sending leaderboard
			show_debug_message("leaderboard request ");
			var socket = buffer_read(buffer, buffer_u16);
			var page = buffer_read(buffer, buffer_u16);//Display per 10?
			var wantDailyNumber = buffer_read(buffer, buffer_u16) - 1;//Display per 10?
			if wantDailyNumber == -1
				wantDailyNumber = totalDailies;
			show_debug_message("page " + string(page));
			show_debug_message("dailyNumber " + string(wantDailyNumber));
			var sendBuffer = buffer_create(8,buffer_grow,1);
			buffer_write(sendBuffer,buffer_u8,NETDATA.LEADERBOARD);
			var stringChecker = "scorelb";
			var fileName;
			var noFile = false;
			if getScore {
				fileName = file_find_first("ds"+string(wantDailyNumber) + "_ntultradailyscore*", 0);
				if fileName == ""
				{
					noFile = true;
					fileName = file_find_first(string(wantDailyNumber) + "_ntultradailyrace*", 0);
					fileName = string_replace(fileName, "_ntultradailyrace", "_ntultradailyscore");
					//fileName = dailyScoreSaveFileString;
				}
			}
			else {
				fileName = file_find_first(string(wantDailyNumber) + "_ntultradailyrace*", 0);
				stringChecker = "racelb";
				if fileName == ""
				{
					noFile = true;
					fileName = file_find_first("ds"+string(wantDailyNumber) + "_ntultradailyscore*", 0);
					fileName = string_replace(fileName, "_ntultradailyscore", "_ntultradailyrace");
					//fileName = dailyRaceSaveFileString;
				}
			}
			show_debug_message("fileName " + string(fileName));
			var scoreLeaderboard = "";
			if (file_exists(fileName) && !noFile)
			{
				ini_open(fileName);
				var i = page*10;
				var j = 0;
				while(ini_key_exists(stringChecker,i) && j < 10)
				{
					scoreLeaderboard += ini_read_string(stringChecker,i,"")+"|";
					i++;
					j++;
				}
				show_debug_message("amount of scores to show " + string(j));
				ini_close();
			}
				
			var totalPages = ceil(totalScoreEntries/10) - 1;
			if !getScore
				totalPages = ceil(totalRaceEntries/10) - 1;
			totalPages = max(0,totalPages);
			buffer_write(sendBuffer,buffer_string,scoreLeaderboard);
			/*
			if getScore
				buffer_write(sendBuffer,buffer_string,string_split(string_replace(dailyScoreSaveFileString,"ntultra",""),"_")[1]);
			else
				buffer_write(sendBuffer,buffer_string,string_split(string_replace(dailyRaceSaveFileString,"ntultra",""),"_")[1]);
				*/
			//if file_exists(fileName)
			if fileName == ""
				buffer_write(sendBuffer,buffer_string,"");
			else
				buffer_write(sendBuffer,buffer_string,string_split(string_replace(fileName,"ntultra",""),"_")[1]);
			//else
			//	buffer_write(sendBuffer,buffer_string,"");
			buffer_write(sendBuffer,buffer_u16,page);
			buffer_write(sendBuffer,buffer_u16,totalPages);
			buffer_write(sendBuffer,buffer_u16,wantDailyNumber);
			network_send_packet(socket, sendBuffer, buffer_get_size(sendBuffer));
			buffer_delete(sendBuffer);
			scoreLeaderboard = string_replace_all(scoreLeaderboard,"|","\n");
			if getScore
				scoreLeaderboardString = scoreLeaderboard;
			else
				raceLeaderboardString = scoreLeaderboard;
		break;
	}
	buffer_delete(buffer);
}