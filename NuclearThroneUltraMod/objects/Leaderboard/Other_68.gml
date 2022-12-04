/// @description Networking
var type = async_load[? "type"];
//Connection to server
debug("network async client");
if (type == network_type_data) {
	debug("WOW GOT A CONNECTION");
	var buffer = async_load[? "buffer"];
	buffer_seek(buffer, buffer_seek_start, 0);
	var data = buffer_read(buffer, buffer_u8);
	debug("data received: ",data);
	switch(data)
	{
		case NETDATA.CLIENT_ID:
			myClientId = buffer_read(buffer, buffer_u16);
			UberCont.todaysSeed = buffer_read(buffer, buffer_u16);
			if array_length(UberCont.runScore) > 1
			{
				debug("send score: ",string(UberCont.runScore));
				var sendBuffer = buffer_create(21,buffer_grow,1);
				buffer_write(sendBuffer,buffer_u8,NETDATA.SCORE);
				buffer_write(sendBuffer,buffer_u16,myClientId);
				buffer_write(sendBuffer,buffer_u64,UberCont.runScore[0]);//Kills
				buffer_write(sendBuffer,buffer_string,UberCont.runScore[1]);//Name
				buffer_write(sendBuffer,buffer_u8,UberCont.runScore[2]);//area
				buffer_write(sendBuffer,buffer_u8,UberCont.runScore[3]);//subarea
				buffer_write(sendBuffer,buffer_u8,UberCont.runScore[4]);//loops technically limited to loop 255
				buffer_write(sendBuffer,buffer_u8,UberCont.runScore[5]);//race
				buffer_write(sendBuffer,buffer_u8,UberCont.runScore[6]);//bskin
				buffer_write(sendBuffer,buffer_bool,UberCont.runScore[7]);//altUltra
				buffer_write(sendBuffer,buffer_u16,UberCont.runScore[8]);//wep
				buffer_write(sendBuffer,buffer_u16,UberCont.runScore[9]);//bwep
				buffer_write(sendBuffer,buffer_u16,UberCont.runScore[10]);//cwep
				buffer_write(sendBuffer,buffer_u8,UberCont.runScore[11]);//crown
				buffer_write(sendBuffer,buffer_u8,UberCont.runScore[12]);//Ultra mutation 255 is none
				network_send_packet(serverSocket, sendBuffer, buffer_get_size(sendBuffer));
				buffer_delete(sendBuffer);
			}
			else
			{
				//Just get leaderboard
				event_user(0);
			}
			UberCont.runScore = [];
		break;
		case NETDATA.SCORE:
		break;
		case NETDATA.LEADERBOARD:
			debug("leaderboard received!");
			//Receiving leaderboard
			var receivedLeaderboard = buffer_read(buffer,buffer_string);
			var leaderboardTypeString = buffer_read(buffer,buffer_string);
			if string_count("dailyscore",leaderboardTypeString) > 0
			{
				leaderboardName = "DAILY SCORE "+string_replace(leaderboardTypeString,"dailyscore","");
				leaderboardType = LEADERBOARD.SCORE;
			} else if string_count("dailyrace",leaderboardTypeString) > 0
			{
				leaderboardName = "DAILY RACE "+string_replace(leaderboardTypeString,"dailyrace","");
				leaderboardType = LEADERBOARD.RACE;
			}
			UberCont.leaderboardType = leaderboardType;
			leaderboardName = string_replace(leaderboardName,".sav","");
			page = buffer_read(buffer,buffer_u16);
			totalPages = buffer_read(buffer,buffer_u16);
			totalScoreLeaderboardEntries = string_count("|",receivedLeaderboard);
			//leaderboard = string_replace(receivedLeaderboard,"_","\n");
			leaderboard = [];
			var startIndex = 1;
			var j = 0;
			repeat(clamp(totalScoreLeaderboardEntries,0,10))
			{
				var scoreEntry = string_copy(receivedLeaderboard,startIndex,string_pos_ext("|",receivedLeaderboard,startIndex)-startIndex);
				var scoreEntryList = [];
				var i = 0;
				var entryIndex = 1;
				var entries = 13//12 entries
				if leaderboardType == LEADERBOARD.RACE
					entries = 11;//10 entries
				repeat(entries)
				{
					scoreEntryList[i] = string_copy(scoreEntry,entryIndex, string_pos_ext(" ",scoreEntry,entryIndex)-entryIndex);
					i++;
					entryIndex = string_pos_ext(" ",scoreEntry,entryIndex);
					entryIndex++;
				}
				startIndex = string_pos_ext("|",receivedLeaderboard,startIndex);
				startIndex++;
				if leaderboardType == LEADERBOARD.RACE
				{
					var frameTime = scoreEntryList[0];
					var microseconds = frameTime / 0.3;
					microseconds /= 100
					microseconds = floor(100 * frac(microseconds));
					var seconds = frameTime / 30;
					seconds /= 60
					seconds = floor(60 * frac(seconds));
					var minutes = frameTime / 1800;
					minutes /= 60
					minutes = floor(60 * frac(minutes));
					var hours = frameTime / 108000;
					hours /= 60
					hours = floor(60 * frac(hours));
					var microsecondsstring = string(microseconds);
					if microseconds<10
					{microsecondsstring="0"+microsecondsstring;}
					var secondsstring=string(seconds)
					if seconds<10
					{secondsstring="0"+secondsstring;}
					var minutesstring=string(minutes)
					if minutes<10
					{minutesstring="0"+minutesstring;}
					var txttime = "";
					if hours >= 1
					{
						txttime = string(hours)+":"+minutesstring+":"+secondsstring+":"+microsecondsstring;
					}
					else
					{
						txttime = minutesstring+":"+secondsstring+":"+microsecondsstring;
					}
					scoreEntryList[0] = txttime;
					var routeArray = string_split(scoreEntryList[2],">");
					debug("routearray: ", routeArray);
					var al = array_length(routeArray)-1
					var areaArray = [];
					for (var i = 0; i < al; i++)
					{
						areaArray[i] = scrAreaName(real(routeArray[i]),0,0);
						areaArray[i][0] = string_replace(areaArray[i][0],"_1",">");
						areaArray[i][0] = string_replace(areaArray[i][0],"_2",">");
						areaArray[i][0] = string_replace(areaArray[i][0],"_3",">");
						areaArray[i][0] = string_replace(areaArray[i][0],"???","?>");
					}
					i --;
					areaArray[i][0] = string_copy(areaArray[i][0],0,string_length(areaArray[i][0])-1);
					scoreEntryList[2] = areaArray;
				}
				leaderboard[j] = scoreEntryList;
				j++;
			}
		break;
	}
	
}