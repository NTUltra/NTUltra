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
		scrSendScore(buffer);
		break;
		case NETDATA.SCORE:
		break;
		case NETDATA.LEADERBOARD:
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
					if !UberCont.viewDailyGamemode
						viewingWeekly = true;
					var displayWeek;
					if UberCont.viewDailyGamemode
					{
						leaderboardName[0] = UberCont.today;
						displayWeek = string_replace(leaderboardTypeString,"dailygamemode","");
					}
					else
					{
						leaderboardName[0] = "WEEKLY ";
						displayWeek = string_replace(leaderboardTypeString,"weekly","");
						displayWeek = string_copy(displayWeek,0,string_pos("+", displayWeek) - 1);
						displayWeek = string_replace(displayWeek,"-"," ");
						leaderboardName[0] += displayWeek;
					}
					var gmn = string_copy(leaderboardTypeString,string_pos("+",leaderboardTypeString)+3,
					string_length(leaderboardTypeString)-string_pos("+",leaderboardTypeString) - 8);
					gmn = string_split(gmn,",",false);
					viewingWeeklyGamemode[0] = real(gmn[0]);
					viewingWeeklyGamemode[1] = real(gmn[1]);
					viewingWeeklyGamemode[2] = real(gmn[2]);
					if viewingWeeklyGamemode[0] == 8
					{
						leaderboardType = LEADERBOARD.VANFAN;
					}
					else
					{
						leaderboardType = LEADERBOARD.SCORE;
					}
					leaderboardName[1] = "";
					var i = 0;
					repeat(3)
					{
						if viewingWeeklyGamemode[i] != 0
						{
							leaderboardName[1] += string_replace_all(UberCont.gamemode[viewingWeeklyGamemode[i]],"#"," ");
							if i != 2 && viewingWeeklyGamemode[i + 1] != 0
							{
								leaderboardName[1] +=  " - ";
							}
						}
						i++;
					}
				}
			}
			if string_count("weekly",leaderboardTypeString) > 0 || string_count("dailygamemode",leaderboardTypeString) > 0
			{
				viewingWeekly = true;
				leaderboardName[0] = "WEEKLY ";
				var displayWeek;
				if string_count("dailygamemode",leaderboardTypeString) > 0
				{
					viewingWeekly = false;
					displayWeek = string_replace(leaderboardTypeString,"dailygamemode","");
					leaderboardName[0] = string_replace(leaderboardTypeString,"dailygamemode","");
					leaderboardName[0] = string_split(leaderboardName[0],"+")[0];
				}
				else
				{
					displayWeek = string_replace(leaderboardTypeString,"weekly","");
					displayWeek = string_copy(displayWeek,0,string_pos("+", displayWeek) - 1);
					displayWeek = string_replace(displayWeek,"-"," ");
					leaderboardName[0] += displayWeek;
				}
				var gmn = string_copy(leaderboardTypeString,string_pos("+",leaderboardTypeString)+3,
				string_length(leaderboardTypeString)-string_pos("+",leaderboardTypeString) - 8);
				gmn = string_split(gmn,",",false);
				viewingWeeklyGamemode[0] = real(gmn[0]);
				viewingWeeklyGamemode[1] = real(gmn[1]);
				viewingWeeklyGamemode[2] = real(gmn[2]);
				if viewingWeeklyGamemode[0] == 8
				{
					leaderboardType = LEADERBOARD.VANFAN;
				}
				else
					leaderboardType = LEADERBOARD.SCORE;
				leaderboardName[1] = "";
				var i = 0;
				repeat(3)
				{
					if viewingWeeklyGamemode[i] != 0
					{
						leaderboardName[1] += string_replace_all(UberCont.gamemode[viewingWeeklyGamemode[i]],"#"," ");
						if i != 2 && viewingWeeklyGamemode[i + 1] != 0
						{
							leaderboardName[1] +=  " - ";
						}
					}
					i++;
				}
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
			if viewingWeekly && !UberCont.viewDailyGamemode
			{
				UberCont.weeklyWeek = buffer_read(buffer,buffer_u16);
				if UberCont.totalWeeklies < UberCont.weeklyWeek
					UberCont.totalWeeklies = UberCont.weeklyWeek;
			}
			else
			{
				UberCont.dailyDay = buffer_read(buffer,buffer_u16);
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
				var entries = 15//13 entries ALL DATA ENTRIES
				if leaderboardType == LEADERBOARD.RACE
					entries = 13;//11 entries
				repeat(entries)
				{
					scoreEntryList[i] = string_copy(scoreEntry,entryIndex, string_pos_ext(" ",scoreEntry,entryIndex)-entryIndex);
					i++;
					entryIndex = string_pos_ext(" ",scoreEntry,entryIndex);
					entryIndex++;
				}
				scoreEntryList[1] = string_replace_all(scoreEntryList[1],"@&"," ");//Translate giberish into spaces
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
					scoreEntryList[lastIndex] = [];
				leaderboard[j] = scoreEntryList;
				j++;
			}
		break;
	}
	
}