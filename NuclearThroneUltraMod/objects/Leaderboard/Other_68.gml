/// @description Networking
var type = async_load[? "type"];
//Connection to server
debug("network async client");
if (type == network_type_data) {
	debug("WOW GOT A CONNECTION");
	var buffer = async_load[? "buffer"];
	buffer_seek(buffer, buffer_seek_start, 0);
	var data = buffer_read(buffer, buffer_u8);
	alarm[3] = 0;
	debug("data received: ",data);
	switch(data)
	{
		case NETDATA.CLIENT_ID:
		//SENDING SCORE
			debug("CLIENT ID");
			myClientId = buffer_read(buffer, buffer_u16);
			var latestVersion = buffer_read(buffer, buffer_string);
			UberCont.totalDailies = buffer_read(buffer, buffer_u16);
			//Has a day passed?
			UberCont.totalWeeklies = buffer_read(buffer, buffer_u16);
			debug("TOTAL WEEKLIES ", UberCont.totalWeeklies);
			debug("TOTAL DAILIES ", UberCont.totalDailies);
			debug("isWeekly ", UberCont.isWeekly);
			debug( "score :",UberCont.runScore);
			debug( "rees :",UberCont.runRace);
			if array_length(UberCont.runScore) > 1
			{
				debug("send score: ",string(UberCont.runScore));
				var sendBuffer = buffer_create(24,buffer_grow,1);
				if UberCont.isWeekly
				{
					buffer_write(sendBuffer,buffer_u8,NETDATA.WEEKLY);
					viewingWeekly = true;
					UberCont.isWeekly = false;
				}
				else
					buffer_write(sendBuffer,buffer_u8,NETDATA.SCORE);
				buffer_write(sendBuffer,buffer_u16,myClientId);
				if viewingWeekly
				{
					buffer_write(sendBuffer,buffer_u16,UberCont.weeklyWeek);
					buffer_write(sendBuffer,buffer_string,UberCont.encrypted_data.ctot_weeklies_score[0]);//Send UUID
					UberCont.encrypted_data.ctot_weeklies_score[0] = "";
					for (var i = 0; i < array_length(UberCont.runScore); i++)
					{
						UberCont.encrypted_data.ctot_weeklies_score[0] += string(UberCont.runScore[i])+" ";
					}
				}
				else
					buffer_write(sendBuffer,buffer_u16,UberCont.dailyDay);//This is the day I started my run
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
				buffer_write(sendBuffer,buffer_string,UberCont.runScore[13]);//List of mutations
				network_send_packet(serverSocket, sendBuffer, buffer_get_size(sendBuffer));
				buffer_delete(sendBuffer);
			}
			else if UberCont.isWeekly && array_length(UberCont.runRace) > 1{
				UberCont.isWeekly = false;
				viewingWeekly = true;
				debug("send vanfan: ",string(UberCont.runRace));
				var sendBuffer = buffer_create(10,buffer_grow,1);
				buffer_write(sendBuffer,buffer_u8,NETDATA.WEEKLY);
				buffer_write(sendBuffer,buffer_u16,myClientId);
				buffer_write(sendBuffer,buffer_u16,UberCont.weeklyWeek);
				buffer_write(sendBuffer,buffer_string,UberCont.encrypted_data.ctot_weeklies_score[0]);//Send UID
				buffer_write(sendBuffer,buffer_u64,UberCont.runRace[0]);//Time
				buffer_write(sendBuffer,buffer_string,UberCont.runRace[1]);//Name
				buffer_write(sendBuffer,buffer_u8,UberCont.runRace[2]);//race
				buffer_write(sendBuffer,buffer_u8,UberCont.runRace[3]);//bskin
				network_send_packet(serverSocket, sendBuffer, buffer_get_size(sendBuffer));
				buffer_delete(sendBuffer);
			}
			else
			{
				//Just get leaderboard
				UberCont.weeklyWeek = UberCont.totalWeeklies;
				UberCont.dailyDay = UberCont.totalDailies;
				debug("total dailies ", UberCont.dailyDay);
				event_user(0);
			}
			UberCont.runScore = [];
		break;
		case NETDATA.SCORE:
		break;
		case NETDATA.LEADERBOARD:
			debug("leaderboard received! ", leaderboardType);
			//Allow continueation quicker
			if alarm[1] > 3
				alarm[1] = 3;
			//Receiving leaderboard
			var receivedLeaderboard = buffer_read(buffer,buffer_string);
			var leaderboardTypeString = buffer_read(buffer,buffer_string);
			if leaderboardTypeString == ""
			{
				if (leaderboardType == LEADERBOARD.SCORE)
				{
					leaderboardName[0] = "DAILY SCORE ";
					leaderboardName[1] = UberCont.today;
				}
				else if (leaderboardType == LEADERBOARD.RACE)
				{
					leaderboardName[0] = "DAILY RACE ";
					leaderboardName[1] = UberCont.today;
				}
				else if (leaderboardType == LEADERBOARD.WEEKLY) {
					viewingWeekly = true;
					leaderboardName[0] = "WEEKLY ";
					var displayWeek = string_replace(leaderboardTypeString,"weekly","");
					displayWeek = string_copy(displayWeek,0,string_pos("+", displayWeek) - 1);
					displayWeek = string_replace(displayWeek,"-"," ");
					leaderboardName[0] += displayWeek;
					var gmn = string_copy(leaderboardTypeString,string_pos("+",leaderboardTypeString),3);
					viewingWeeklyGamemode = real(string_replace(gmn,".",""));
					if viewingWeeklyGamemode == 8
						leaderboardType = LEADERBOARD.VANFAN;
					else
						leaderboardType = LEADERBOARD.SCORE;
					leaderboardName[1] = string_replace_all(UberCont.gamemode[viewingWeeklyGamemode],"#"," ");
				}
			}
			if string_count("weekly",leaderboardTypeString) > 0
			{
				viewingWeekly = true;
				leaderboardName[0] = "WEEKLY ";
				var displayWeek = string_replace(leaderboardTypeString,"weekly","");
				displayWeek = string_copy(displayWeek,0,string_pos("+", displayWeek) - 1);
				displayWeek = string_replace(displayWeek,"-"," ");
				
				leaderboardName[0] += displayWeek;
				var gmn = string_copy(leaderboardTypeString,string_pos("+",leaderboardTypeString),3);
				viewingWeeklyGamemode = real(string_replace(gmn,".",""));
				if viewingWeeklyGamemode == 8
					leaderboardType = LEADERBOARD.VANFAN;
				else
					leaderboardType = LEADERBOARD.SCORE;
				leaderboardName[1] = string_replace_all(UberCont.gamemode[viewingWeeklyGamemode],"#"," ")
			}
			if string_count("dailyscore",leaderboardTypeString) > 0
			{
				leaderboardName[0] = "DAILY SCORE ";
				leaderboardName[1] = string_replace(leaderboardTypeString,"dailyscore","");
				leaderboardType = LEADERBOARD.SCORE;
			} else if string_count("dailyrace",leaderboardTypeString) > 0
			{
				leaderboardName[0] = "DAILY RACE ";
				leaderboardName[1] = string_replace(leaderboardTypeString,"dailyrace","");
				leaderboardType = LEADERBOARD.RACE;
			}
			UberCont.leaderboardType = leaderboardType;
			leaderboardName[1] = string_replace(leaderboardName[1],".sav","");
			page = buffer_read(buffer,buffer_u16);
			totalPages = buffer_read(buffer,buffer_u16);
			if viewingWeekly
			{
				UberCont.weeklyWeek = buffer_read(buffer,buffer_u16);
				if UberCont.totalWeeklies < UberCont.weeklyWeek
					UberCont.totalWeeklies = UberCont.weeklyWeek;
				debug("get totalweeklies: ", UberCont.totalWeeklies);
			}
			else
			{
				UberCont.dailyDay = buffer_read(buffer,buffer_u16);
				debug("Receive daily day: ", UberCont.dailyDay);
				if UberCont.totalDailies < UberCont.dailyDay
					UberCont.totalDailies = UberCont.dailyDay;
			}
			totalScoreLeaderboardEntries = string_count("|",receivedLeaderboard);
			//leaderboard = string_replace(receivedLeaderboard,"_","\n");
			leaderboard = [];
			if totalScoreLeaderboardEntries == 0 || UberCont.dailyDay == 0
				noBoard = true;
			else
				noBoard = false;
			var startIndex = 1;
			var j = 0;
			repeat(clamp(totalScoreLeaderboardEntries,0,10))
			{
				var scoreEntry = string_copy(receivedLeaderboard,startIndex,string_pos_ext("|",receivedLeaderboard,startIndex)-startIndex);
				var scoreEntryList = [];
				var i = 0;
				var entryIndex = 1;
				var entries = 14//13 entries
				if leaderboardType == LEADERBOARD.RACE
					entries = 12;//11 entries
				repeat(entries)
				{
					scoreEntryList[i] = string_copy(scoreEntry,entryIndex, string_pos_ext(" ",scoreEntry,entryIndex)-entryIndex);
					i++;
					entryIndex = string_pos_ext(" ",scoreEntry,entryIndex);
					entryIndex++;
				}
				startIndex = string_pos_ext("|",receivedLeaderboard,startIndex);
				startIndex++;
				if leaderboardType == LEADERBOARD.RACE || leaderboardType == LEADERBOARD.VANFAN
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
					if leaderboardType != LEADERBOARD.VANFAN
					{
						var routeArray = string_split(scoreEntryList[2],">");
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
				}
				//List of mutations
				var lastIndex = array_length(scoreEntryList)-1
				var mutationsString = scoreEntryList[lastIndex];
				if (scoreEntryList[lastIndex] != "" && string_replace_all(scoreEntryList[lastIndex],"-","") != scoreEntryList[lastIndex])
					scoreEntryList[lastIndex] = string_split(mutationsString,"-",true);
				else
					scoreEntryList[lastIndex] = "";
				leaderboard[j] = scoreEntryList;
				j++;
			}
		break;
	}
	
}