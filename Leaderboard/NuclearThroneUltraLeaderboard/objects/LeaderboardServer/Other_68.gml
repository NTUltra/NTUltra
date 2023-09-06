/// @description Networking

var type = async_load[? "type"];
show_debug_message("network: " + string(type));
if (type == network_type_non_blocking_connect || type == network_type_connect) 
{
	show_debug_message("has connected");
	//I am host and I detect a new guy
	var socket = async_load[? "socket"];
	show_debug_message("socket connected: "+string(socket));
	var sendBuffer = buffer_create(8,buffer_grow,1);
	buffer_write(sendBuffer,buffer_u8,NETDATA.CLIENT_ID);
	buffer_write(sendBuffer,buffer_u16,socket);
	buffer_write(sendBuffer,buffer_string,updateVersion);
	buffer_write(sendBuffer,buffer_u16,totalDailies);
	show_debug_message("total dailies: " + string(totalDailies));
	show_debug_message("total weeklies: " + string(totalWeeklies));
	buffer_write(sendBuffer,buffer_u16,totalWeeklies);
	network_send_packet(socket, sendBuffer, buffer_get_size(sendBuffer));
	buffer_delete(sendBuffer);
}
//Data to act on
if (type == network_type_data) {
	var buffer = async_load[? "buffer"];

	buffer_seek(buffer, buffer_seek_start, 0);
	var data = buffer_read(buffer, buffer_u8);
	var isScore = true;
	var isWeekly = false;
	var getScore = true;
	var getWeekly = false;
	switch(data)
	{
		case NETDATA.STARTDAILY:
			show_debug_message("Daily start");
			var socket = buffer_read(buffer, buffer_u16);
			var clientDay = buffer_read(buffer, buffer_string);
			//Get correct seed and day based on user time
			var sendBuffer = buffer_create(5,buffer_grow,1);
			buffer_write(sendBuffer,buffer_u8,NETDATA.STARTDAILY);
			var seed = scrGetSeedOfDay(clientDay);
			buffer_write(sendBuffer,buffer_u16,seed);
			var dailyDay = 0;
			//Find file with the clientDay then get the number of that file
			var existingScoreFile = "";
			existingScoreFile = file_find_first("*_ntultradailyscore" + clientDay + ".sav",0);
			if (existingScoreFile != "")
			{
				dailyDay = real(
					string_copy
					(
						existingScoreFile,
						3,
						string_last_pos("_ntultradailyscore",
						existingScoreFile)-2
					)
				);
			} else
			{
				dailyDay = totalDailies;
				show_debug_message("Newest score");
			}
			file_find_close();
			buffer_write(sendBuffer,buffer_u16,dailyDay);
			network_send_packet(socket, sendBuffer, buffer_get_size(sendBuffer));
			buffer_delete(sendBuffer);
		break;
		case NETDATA.STARTWEEKLY:
			show_debug_message("Weekly start");
			var socket = buffer_read(buffer, buffer_u16);
			var sendBuffer = buffer_create(6,buffer_grow,1);
			buffer_write(sendBuffer,buffer_u8,NETDATA.STARTWEEKLY);
			buffer_write(sendBuffer,buffer_u16,weekSeed);
			show_debug_message("send: " + string(weekGamemode));
			buffer_write(sendBuffer,buffer_u8,weekGamemode[0]);
			buffer_write(sendBuffer,buffer_u8,weekGamemode[1]);
			buffer_write(sendBuffer,buffer_u8,weekGamemode[2]);
				if (array_contains(weekGamemode, 1))//One weapon only
				{
					buffer_write(sendBuffer,buffer_u16,weeklyOption[0]);
				}
				if (array_contains(weekGamemode, 19))//Disc room
				{
					buffer_write(sendBuffer,buffer_u16,weeklyOption[0]);
					buffer_write(sendBuffer,buffer_u8,weeklyOption[1]);
				}
			network_send_packet(socket, sendBuffer, buffer_get_size(sendBuffer));
			buffer_delete(sendBuffer);
		break;
		//Receiving score
		case NETDATA.RACE:
			isScore = false;
		case NETDATA.WEEKLY:
			if isScore
				isWeekly = true;
		case NETDATA.SCORE:
			//if isScore
			var socket = buffer_read(buffer, buffer_u16);
			var wantDay = buffer_read(buffer, buffer_u16);
			show_debug_message("Sending to day: " + string(wantDay));
			show_debug_message("Having total: " + string(totalDailies));
			var gm = [];
			var uid = "";
			if isWeekly {
				var findFile = file_find_first("w"+string(wantDay) + "_ntultraweekly*", 0);
				if findFile == ""
				{
					gm = weekGamemode;
				}
				else
				{
					//"w10_ntultraweekly12-02-1999-7.sav";
					var gmn = string_copy(findFile,string_pos("+",findFile)+3,
					string_length(findFile)-string_pos("+",findFile) - 8);
					gmn = string_split(gmn,",",false);
					gm[0] = real(gmn[0]);
					gm[1] = real(gmn[1]);
					gm[2] = real(gmn[2]);
				}
				show_debug_message("gamemode: " + string(gm));
				uid = buffer_read(buffer, buffer_string);
			}
			var newScore = [];
			newScore[0] = buffer_read(buffer, buffer_u64);//Kills / frame time
			newScore[1] = buffer_read(buffer, buffer_u64);//User Id
			newScore[2] = buffer_read(buffer,buffer_string);//Username
			show_debug_message("GAMEMODE: " + string(gm));
			if array_length(gm) > 0 && gm[0] == 8
			{
				//Van Fan
				newScore[3] = buffer_read(buffer,buffer_u8)//race
				newScore[4] = buffer_read(buffer,buffer_u8)//bskin
			}
			else if isScore
			{
				newScore[3] = buffer_read(buffer,buffer_u8)//area
				newScore[4] = buffer_read(buffer,buffer_u8)//subarea
				newScore[5] = buffer_read(buffer,buffer_u8)//loops technically limited to loop 255
				newScore[6] = buffer_read(buffer,buffer_u8)//race
				newScore[7] = buffer_read(buffer,buffer_u8)//bskin
				newScore[8] = buffer_read(buffer,buffer_bool)//altUltra
				newScore[9] = buffer_read(buffer,buffer_u16);//wep
				newScore[10] = buffer_read(buffer,buffer_u16);//bwep
				newScore[11] = buffer_read(buffer,buffer_u16);//cwep
				newScore[12] = buffer_read(buffer,buffer_string);//crown
				newScore[13] = buffer_read(buffer,buffer_u8);//ultra mod
				newScore[14] = buffer_read(buffer,buffer_u8);//ultra mutation 255 is none
				newScore[15] = buffer_read(buffer,buffer_string);//List of mutations
			}
			else
			{
				newScore[3] = buffer_read(buffer,buffer_string)//Route
				newScore[4] = buffer_read(buffer,buffer_u8)//race
				newScore[5] = buffer_read(buffer,buffer_u8)//bskin
				newScore[6] = buffer_read(buffer,buffer_bool)//altUltra
				newScore[7] = buffer_read(buffer,buffer_u16);//wep
				newScore[8] = buffer_read(buffer,buffer_u16);//bwep
				newScore[9] = buffer_read(buffer,buffer_u16);//cwep
				newScore[10] = buffer_read(buffer,buffer_string);//crown
				newScore[11] = buffer_read(buffer,buffer_u8);//ultra mod
				newScore[12] = buffer_read(buffer,buffer_u8);//ultra mutation 255 is none
				newScore[13] = buffer_read(buffer,buffer_string);//List of mutations
				var sendBuffer = buffer_create(1,buffer_fixed,1);
				buffer_write(sendBuffer,buffer_u8,NETDATA.CONFIRMRACE);
				network_send_packet(socket, sendBuffer, buffer_get_size(sendBuffer));
				buffer_delete(sendBuffer);
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
			if isWeekly {
				fileName = file_find_first("w"+string(wantDay) + "_ntultraweekly*", 0);
				show_debug_message("FILE1weekly: " + fileName);
				stringChecker = "weeklylb"
				if fileName == ""
				{
					fileName = weeklySaveFileString;
				}
			}
			else if isScore {
				fileName = file_find_first("ds"+string(wantDay) + "_ntultradailyscore*", 0);
				show_debug_message("FILE1score: " + fileName);
				if fileName == ""
				{
					fileName = dailyScoreSaveFileString;
				}
			}
			else {
				fileName = file_find_first(string(wantDay) + "_ntultradailyrace*", 0);
				stringChecker = "racelb";
				if fileName == ""
				{
					fileName = dailyRaceSaveFileString;
				}
			}
			ini_open(fileName);
				//Get existing
				var i = 0;
				var canAddToList = true;
				if (file_exists(fileName))
				{
					while(ini_key_exists(stringChecker,i))
					{
						var newEntry = ini_read_string(stringChecker,i,"");
						//First entry must be kills
						var killsString = string_copy(newEntry,1,string_pos(" ",newEntry));
						var uuid = real(string_split(newEntry," ")[1]);
						var kills = real(killsString);
						var replaceScore = false;
						if uuid == newScore[1]
						{
							show_debug_message("ENTRY ALREADY EXISTS");
							if isWeekly
							{
								if newScore[0] <= kills
								{
									canAddToList = false;
								}
								else
								{
									replaceScore = true;	
								}
							}
							else if !isScore
							{
								if newScore[0] >= kills//New time is higher than existing time?
								{
									canAddToList = false;
								}
								else
								{
									replaceScore = true;	
								}
							}
							else
							{
								canAddToList = false;
							}
						}
						if (!replaceScore)
						{
							ds_list_add(scoreSorter,kills);
							ds_list_add(scoreList,newEntry);
						}
						i++;
						//split on _ then split on | and take second entry thats the kills
					}
				}
				if isWeekly
					totalWeeklyEntries = i + 1;
				else if isScore
					totalScoreEntries = i + 1;
				else
					totalRaceEntries = i + 1;
				if isWeekly 
				{
					if uid != ""
					{
						var currentPos = ds_list_find_index(scoreList,uid)
						if currentPos != -1
						{
							//Already has an entry
							var currentScore = string_copy(uid,1,string_pos(" ",uid));
							if (newScore[0] > currentScore)//If its van fan I guess it should be the other way around
							{
								ds_list_delete(scoreList, currentPos);
								ds_list_delete(scoreSorter, currentPos);
							}
						}
					}
				}
				//And add the new one
				if canAddToList
				{
					show_debug_message("ADD NEW SCORE ");
					ds_list_add(scoreSorter,newScore[0]);
					ds_list_add(scoreList,scoreString);
				}
				var al = ds_list_size(scoreSorter);
				//Sorting algorithm (bubble)
				if isScore
				{
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
				}
				else//Race reverse order
				{
					for (var i = al; i >= 0; i--)
					{
						for (var j = al; j > al-i; j--)
						{
							if (scoreSorter[| j] < scoreSorter[| j-1]) {
								var swapper = scoreList[| j];
								scoreList[| j] = scoreList[| j - 1]
								scoreList[| j - 1] = swapper;
								var swapperScore = scoreSorter[| j];
								scoreSorter[| j] = scoreSorter[| j - 1]
								scoreSorter[| j - 1] = swapperScore;
							}
						}
					}
				}
					/*
				for (var j = al; j > al-i; j--)
				{
					scoreList[| j] = scoreSorter[| j];
				}*/
				//Rewrite!
				if (file_exists(fileName))
					ini_section_delete(stringChecker);
				var al = ds_list_size(scoreList);
				var scoreLeaderboard = "";
				var readableLeaderboard = "";
				for (var i = 00; i < al; i++)
				{
					var nextScore = scoreList[| i]+"|";
					scoreLeaderboard += nextScore;
					ini_write_string(stringChecker,i,scoreList[| i]);
					
					var nextScoreArray = string_split(nextScore," ",false,2);
					show_debug_message(string(nextScoreArray));
					readableLeaderboard += nextScoreArray[0] + " " + nextScoreArray[2];
					show_debug_message(readableLeaderboard);
				}
			ini_close();
			ds_list_destroy(scoreSorter);
			ds_list_destroy(scoreList);
			var sendBuffer = buffer_create(8,buffer_grow,1);
			buffer_write(sendBuffer,buffer_u8,NETDATA.LEADERBOARD);
			buffer_write(sendBuffer,buffer_string,readableLeaderboard);
			buffer_write(sendBuffer,buffer_string,string_split(string_replace(fileName,"ntultra",""),"_")[1]);
			buffer_write(sendBuffer,buffer_u16,0);//Page
			show_debug_message("TOTAL PAGES: " + string(ceil(totalScoreEntries/10)-1));
			if isWeekly
				buffer_write(sendBuffer,buffer_u16,ceil(totalWeeklyEntries/10)-1);//Total pages
			else if isScore
				buffer_write(sendBuffer,buffer_u16,ceil(totalScoreEntries/10)-1);//Total pages
			else
				buffer_write(sendBuffer,buffer_u16,ceil(totalRaceEntries/10)-1);//Total pages
			if isWeekly
				buffer_write(sendBuffer,buffer_u16,totalWeeklies);//Daily number
			else
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
		case NETDATA.LEADERBOARDWEEKLY:
			if getScore
			{
				getWeekly = true;
			}
		case NETDATA.LEADERBOARD:
			//Sending leaderboard
			show_debug_message("leaderboard request ");
			var socket = buffer_read(buffer, buffer_u16);
			var page = buffer_read(buffer, buffer_u16);//Display per 10?
			var wantDailyNumber = buffer_read(buffer, buffer_u16);//Display per 10?
			if wantDailyNumber == -1
			{
				if getWeekly
					wantDailyNumber = totalWeeklies;
				else
					wantDailyNumber = totalDailies;
			}
			show_debug_message("page " + string(page));
			show_debug_message("dailyNumber " + string(wantDailyNumber));
			var sendBuffer = buffer_create(8,buffer_grow,1);
			buffer_write(sendBuffer,buffer_u8,NETDATA.LEADERBOARD); 
			var stringChecker = "scorelb";
			var fileName;
			var noFile = false;
			if getWeekly
			{
				fileName = file_find_first("w"+string(wantDailyNumber) + "_ntultraweekly*", 0);
				stringChecker = "weeklylb";
				if fileName == ""
				{
					noFile = true;
					fileName = weeklySaveFileString;
				}
			}
			else if getScore {
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
			var scoreLeaderboard = "";
			if (file_exists(fileName) && !noFile)
			{
				ini_open(fileName);
				var i = page*10;
				var j = 0;
				while(ini_key_exists(stringChecker,i) && j < 10)
				{
					var nextScore = ini_read_string(stringChecker,i,"")+"|";
					var nextScoreArray = string_split(nextScore," ",false,2);
					show_debug_message(string(nextScoreArray));
					scoreLeaderboard += nextScoreArray[0] + " " + nextScoreArray[2];
					show_debug_message(scoreLeaderboard);
					i++;
					j++;
				}
				show_debug_message("amount of scores to show " + string(j));
				ini_close();
			}
				
			var totalPages = ceil(totalScoreEntries/10) - 1;
			if getWeekly
				totalPages = ceil(totalWeeklyEntries/10) - 1;
			else if !getScore
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