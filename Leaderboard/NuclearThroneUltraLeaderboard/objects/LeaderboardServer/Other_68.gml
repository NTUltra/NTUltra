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
	//hitsCounter += 1;
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
	var isUpdateSequence = false;
	show_debug_message("Data: " + string(data));
	switch(data)
	{
		case NETDATA.CANIPARTICIPATE:
			var socket = buffer_read(buffer, buffer_u16);
			var userId = buffer_read(buffer, buffer_u64);
			var canParticipate = scrGetExistingScore(dailyScoreSaveFileString,userId);
			var sendBuffer = buffer_create(4,buffer_grow,1);
			buffer_write(sendBuffer,buffer_u8,NETDATA.CANIPARTICIPATE);
			buffer_write(sendBuffer,buffer_bool,canParticipate);
			var dailyDay = scrGetDailyNumber();
			show_debug_message("participation day:");
			show_debug_message(dailyDay);
			buffer_write(sendBuffer,buffer_u8,dailyDay);
			if dailyDay % 1 == 0
			{
				show_debug_message("This is agm!");
				//Daily gamemode
				var canParticipateGm = scrGetExistingScore(biDailyGamemodeSaveFileString,userId,"gamemodelb");
				buffer_write(sendBuffer,buffer_bool,canParticipateGm);
				buffer_write(sendBuffer,buffer_string,string(dayGamemode));
			}
			else {
				show_debug_message("This is a race");
				buffer_write(sendBuffer,buffer_bool,true);	
			}
			network_send_packet(socket, sendBuffer, buffer_get_size(sendBuffer));
		break;
		case NETDATA.STARTDAILY:
			var socket = buffer_read(buffer, buffer_u16);
			var userId = buffer_read(buffer, buffer_u64);
			var isScoreRun = buffer_read(buffer,buffer_bool);
			if (isScoreRun)//Daily score
			{
				//REGISTER A MOCK SCORE
				ini_open(dailyScoreSaveFileString);
					var i = 0;
					while (ini_key_exists("scorelb",i))
					{
						i ++;
					}
					ini_write_string("scorelb",i,
						"x0 "+string(userId)+"   1 1 0 1 2 0 44 0 0 [1] 0 255  "
					);
				ini_close();
			}
			if (!isScoreRun && scrGetDailyNumber() % 2 == 0)//IS DAILY GAMEMODE
			{
				//REGISTER A MOCK SCORE
				ini_open(biDailyGamemodeSaveFileString);
					var i = 0;
					while (ini_key_exists("gamemodelb",i))
					{
						i ++;
					}
					ini_write_string("gamemodelb",i,
						"x0 "+string(userId)+"   1 1 0 1 2 0 44 0 0 [1] 0 255  "
					);
				ini_close();
				var sendBuffer = buffer_create(6,buffer_grow,1);
				buffer_write(sendBuffer,buffer_u8,NETDATA.STARTBIDAILYGAMEMODE);
				var dailyDay = scrGetDailyNumber();
				var seed = scrGetSeedOfDay(dayNumber);
				buffer_write(sendBuffer,buffer_u16,dailyDay);
				scrStartAGamemode(socket, sendBuffer, seed, dayGamemode, dayOption);
				network_send_packet(socket, sendBuffer, buffer_get_size(sendBuffer));
				buffer_delete(sendBuffer);
			}
			else//Daily & daily race
			{
				show_debug_message("starting dialy race")
				var sendBuffer = buffer_create(5,buffer_fixed,1);
				buffer_write(sendBuffer,buffer_u8,NETDATA.STARTDAILY);
				//Get correct seed and day based on user time
				var seed = scrGetSeedOfDay(dayNumber);
				buffer_write(sendBuffer,buffer_u16,seed);
				var dailyDay = scrGetDailyNumber();
				buffer_write(sendBuffer,buffer_u16,dailyDay);
				network_send_packet(socket, sendBuffer, buffer_get_size(sendBuffer));
				buffer_delete(sendBuffer);
			}
		break;
		case NETDATA.STARTWEEKLY:
			var socket = buffer_read(buffer, buffer_u16);
			var sendBuffer = buffer_create(6,buffer_grow,1);
			buffer_write(sendBuffer,buffer_u8,NETDATA.STARTWEEKLY);
			scrStartAGamemode(socket, sendBuffer, weekSeed, weekGamemode, weeklyOption);
			network_send_packet(socket, sendBuffer, buffer_get_size(sendBuffer));
			buffer_delete(sendBuffer);
		break;
		//Receiving score
		case NETDATA.UPDATEBIDAILYSCORE:
		case NETDATA.UPDATEWEEKLYSCORE:
		case NETDATA.UPDATESCORE:
			isUpdateSequence = true;
		case NETDATA.RACE:
		if !isUpdateSequence
			isScore = false;
		case NETDATA.BIDAILYGAMEMODE:
		case NETDATA.WEEKLY:
			if isScore && data != NETDATA.UPDATESCORE && data != NETDATA.UPDATEBIDAILYSCORE
				isWeekly = true;
		case NETDATA.SCORE:
			//if isScore
			var socket = buffer_read(buffer, buffer_u16);
			var wantDay = buffer_read(buffer, buffer_u16);
			var gm = [];
			var uid = "";
			if isWeekly {
				var findFile;
				if (data == NETDATA.BIDAILYGAMEMODE || data == NETDATA.UPDATEBIDAILYSCORE)
				{
					findFile = file_find_first(string(wantDay) + "_ntultradailygamemode*", 0);
				}
				else
				{
					findFile = file_find_first("w"+string(wantDay) + "_ntultraweekly*", 0);
				}
				if findFile == ""
				{
					if (data == NETDATA.BIDAILYGAMEMODE || data == NETDATA.UPDATEBIDAILYSCORE)
						gm = dayGamemode;
					else
						gm = weekGamemode;
				}
				else
				{
					//"w10_ntultraweekly12-02-1999-7.sav";
					//"95_ntultradailygamemode12-02-1999-7.sav";
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
			//ITS POSSIBLE SOMEONE TRYING TO POST SCORE FROM PREVIOUS VERSION OF THE GAME????
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
				if (data == NETDATA.BIDAILYGAMEMODE || data == NETDATA.UPDATEBIDAILYSCORE)
				{
					fileName = file_find_first(string(wantDay) + "_ntultradailygamemode*", 0);
					stringChecker = "gamemodelb";
				}
				else
				{
					fileName = file_find_first("w"+string(wantDay) + "_ntultraweekly*", 0);
					stringChecker = "weeklylb"
				}
				if fileName == ""
				{
					if (data == NETDATA.BIDAILYGAMEMODE || data == NETDATA.UPDATEBIDAILYSCORE)
						fileName = biDailyGamemodeSaveFileString;
					else
						fileName = weeklySaveFileString;
				}
			}
			else if isScore {
				fileName = file_find_first("ds"+string(wantDay) + "_ntultradailyscore*", 0);
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
						var firstChar = string_char_at(newEntry,0);
						//First entry must be kills
						var killsString = string_copy(newEntry,1,string_pos(" ",newEntry));
						var uuid = real(string_split(newEntry," ")[1]);
						var kills = 0;
						if firstChar != "x"
							kills = real(killsString);
						//else
						//	kills = real(string_copy(kills,1,string_length(kills)));
						
						var replaceScore = false;
						if uuid == newScore[1]
						{
							show_debug_message("ENTRY ALREADY EXISTS");
							if (isWeekly && (data != NETDATA.BIDAILYGAMEMODE && data != NETDATA.UPDATEBIDAILYSCORE))
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
								if isUpdateSequence || firstChar == "x" {
									replaceScore = true;
								} else
								{
									canAddToList = false;
								}
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
				show_debug_message("UPDATE OR ADD SCORE:");
				show_debug_message(string(newScore[0]));
				if isWeekly && (data != NETDATA.BIDAILYGAMEMODE && data != NETDATA.UPDATEBIDAILYSCORE)
					totalWeeklyEntries = i + 1;
				else if isScore && (data != NETDATA.BIDAILYGAMEMODE && data != NETDATA.UPDATEBIDAILYSCORE)
					totalScoreEntries = i + 1;
				else
					totalRaceEntries = i + 1;
				if isWeekly && (data != NETDATA.BIDAILYGAMEMODE && data != NETDATA.UPDATEBIDAILYSCORE)
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
					var firstChar = string_char_at(nextScore,0);
					if firstChar != "x" {
						readableLeaderboard += nextScoreArray[0] + " " + nextScoreArray[2];
					}
				}
			ini_close();
			ds_list_destroy(scoreSorter);
			ds_list_destroy(scoreList);
			var sendBuffer = buffer_create(8,buffer_grow,1);
			buffer_write(sendBuffer,buffer_u8,NETDATA.LEADERBOARD);
			show_debug_message(readableLeaderboard);
			buffer_write(sendBuffer,buffer_string,readableLeaderboard);
			buffer_write(sendBuffer,buffer_string,string_split(string_replace(fileName,"ntultra",""),"_")[1]);
			buffer_write(sendBuffer,buffer_u16,0);//Page
			if isWeekly && (data != NETDATA.BIDAILYGAMEMODE && data != NETDATA.UPDATEBIDAILYSCORE)
			{
				buffer_write(sendBuffer,buffer_u16,ceil(totalWeeklyEntries/10)-1);//Total pages
			}
			else if isScore && (data != NETDATA.BIDAILYGAMEMODE && data != NETDATA.UPDATEBIDAILYSCORE)
			{
				buffer_write(sendBuffer,buffer_u16,ceil(totalScoreEntries/10)-1);//Total pages
			}
			else
			{
				buffer_write(sendBuffer,buffer_u16,ceil(totalRaceEntries/10)-1);//Total pages
			}
			if isWeekly && (data != NETDATA.BIDAILYGAMEMODE && data != NETDATA.UPDATEBIDAILYSCORE)
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
		case NETDATA.LEADERBOARDGAMEMODE:
		case NETDATA.LEADERBOARDWEEKLY:
			if getScore
			{
				getWeekly = true;
			}
		case NETDATA.LEADERBOARD:
			//Sending leaderboard
			var socket = buffer_read(buffer, buffer_u16);
			var page = buffer_read(buffer, buffer_u16);//Display per 10?
			var wantDailyNumber = buffer_read(buffer, buffer_u16);//Display per 10?
			if wantDailyNumber == -1
			{
				if getWeekly && data != NETDATA.LEADERBOARDGAMEMODE
					wantDailyNumber = totalWeeklies;
				else
					wantDailyNumber = totalDailies;
			}
			var sendBuffer = buffer_create(8,buffer_grow,1);
			buffer_write(sendBuffer,buffer_u8,NETDATA.LEADERBOARD); 
			var stringChecker = "scorelb";
			var fileName;
			noFile = false;
			if (data == NETDATA.LEADERBOARDGAMEMODE)
			{
				stringChecker = "gamemodelb";
				fileName = scrGetDailyGamemodeFile(wantDailyNumber);
			}
			else if getWeekly
			{
				stringChecker = "weeklylb";
				fileName = scrGetWeeklyFile(wantDailyNumber);
			}
			else if getScore {
				fileName = scrGetDailyFile(wantDailyNumber)
			}
			else {
				stringChecker = "racelb";
				fileName = scrGetDailyRaceFile(wantDailyNumber);
			}
			var scoreLeaderboard = "";
			var i = page*10;
			var j = 0;
			if (file_exists(fileName) && !noFile)
			{
				ini_open(fileName);
				
				while(ini_key_exists(stringChecker,i) && j < 10)
				{
					var nextScore = ini_read_string(stringChecker,i,"")+"|";
					var firstChar = string_char_at(nextScore,0);
					if firstChar != "x" {
						var nextScoreArray = string_split(nextScore," ",false,2);
						scoreLeaderboard += nextScoreArray[0] + " " + nextScoreArray[2];
					}
					i++;
					j++;
				}
				while(ini_key_exists(stringChecker,i))
					i++;
				ini_close();
			}
			
			if getWeekly && data == NETDATA.LEADERBOARDGAMEMODE
			{
				totalWeeklyEntries = i;
			}
			else if !getScore || data == NETDATA.LEADERBOARDGAMEMODE
			{
				totalRaceEntries = i;
			} 
			else
			{
				totalScoreEntries = i;
			}
			var totalPages = ceil(i/10) - 1;
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