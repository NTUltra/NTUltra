/// @description every so often check for the day (init)
alarm[0] = 600;
var yesterday = day;
day = date_date_string(date_current_datetime());
var lastweek = week;
week = date_get_week(date_current_datetime());

if day != yesterday
{
	var fileName = file_find_first("ds*", 0);
	totalDailies = defaultTotalDailies;
	defaultTotalDailies = 0;
	while (fileName != "")
	{
		totalDailies ++;
		fileName = file_find_next();
	}
	totalDailies = max(0,totalDailies);
	file_find_close();
	var existingScoreFile = file_find_first("ds" + string(totalDailies) + "_ntultradailyscore*",0);
	if (existingScoreFile != "")
	{
		//Score day exists
		if (existingScoreFile != "ds" + string(totalDailies) + "_ntultradailyscore"+string(day)+".sav")//Day is not the same as today so its a new day
			totalDailies ++;
	}
	file_find_close();
	todaySeed = scrGetSeedOfDay(day);
	dailyScoreSaveFileString="ds"+string(totalDailies) + "_ntultradailyscore"+string(day)+".sav";
	dailyRaceSaveFileString=string(totalDailies) + "_ntultradailyrace"+string(day)+".sav";
	scoreLeaderboardString = "";
	raceLeaderboardString = "";
	if week != lastweek
	{
		show_debug_message("WEEK");
		var weekchecker = date_inc_week(date_current_datetime(), -1);
		var year = min(date_get_year(date_current_datetime()), date_get_year(weekchecker));//In case week crosses the year
		/*
		var seedweek = string(week) + string(year);
		show_debug_message(week);
		show_debug_message(seedweek);
		var byteSeed = 0;
		var byteSize = string_byte_length(seedweek);
		for (var i = 0; i < byteSize; i++) {
			byteSeed = (byteSeed + string_byte_at(seedweek, i)) << 1;
		}
		weekSeed = byteSeed;*/
		weekSeed = week*2 + year;
		random_set_seed(weekSeed);
		weekGamemode = [irandom_range(1,41),0,0];
		//Manual gamemode injection here
		weeklyOption = [];
		if weekGamemode == 26//Daily race
			weekGamemode = 1;
		switch (weekGamemode[0])
		{
			case 1://One weapon only
				weeklyOption[0] = irandom_range(1,maxwep);
				while (weeklyOption[0] == 69 || weeklyOption[0] == 298 || weeklyOption[0] == 1)
				{
					weeklyOption[0] = irandom_range(1,maxwep);
				}
			break;
			case 3://NO HUD
				weekGamemode = [3,15,18];//NO HUD + NO MUTATIONS + NO ELITE POPO
			break
			case 4://WAll is lava
				weekGamemode = [6, 40, 0]//CLAUSTROPHOBIA +1 VS 1
			break;
			case 12://ZOMBIES
				weekGamemode = [12, 39, 0];
			break;
			case 15://NO mutations
				weekGamemode = [19,16,4]; //DISC ROOM, SPIKE TRAPS, WALL IS LAVA
				weeklyOption[0] = irandom_range(1,100);//Disc amount
				weeklyOption[1] = irandom_range(1,20);//Disc damage
			break;
			case 16://SPIKE TRAPS
				weekGamemode = [34, 30, 43]//HARD MODE + Ultra mutation start + Multi-Crown
			break;
			case 17://CHEATS
				weekGamemode = [34,32,0];//Hard mode + one hit wonder
			break;
			case 18: //NO ELITE IDPD
				weekGamemode = [25, 41, 30];//Survival arnea + Double enemy HP + Ultra mutation start
			break;
			case 19://Disc room
				weeklyOption[0] = irandom_range(1,100);//Disc amount
				weeklyOption[1] = irandom_range(1,20);//Disc damage
			break;
			case 21://Loop start
				weekGamemode = [21, 36, 43]//Loop Start + ultra mod start + multi crown
			break;
			case 26://Daily race
				weekGamemode = [22, 28, 0];//infinite levels + all mutations 
			break;
			case 27://Daily score
				weekGamemode = [41, 40, 30];//1 vs 1 + double enemy HP + ultra mutation start
			break;
			case 35://God frog
				weekGamemode = [34, 29, 39];//Hard mode Infinite levels, Gore galore
			break;
			
			case 37://Weekly
				weekGamemode = [20, 34, 36];//Agoraphobia + Hard mode + ultra mod start
			break;
			case 38://Seeded
				weekGamemode = [41, 29, 0] //Double enemy HP + Infinite ammo
			break
			case 39://Gore galore
				weekGamemode = [5, 32, 0] //1HP equality + one hit wonder
			break;
			case 40://1vs1
				weekGamemode = [6, 22, 43]//Claustophobia + Infinite levels + multi crown
			break;
			case 41://Double enemy HP
				weekGamemode = [6, 19, 9]//Claustophobia + Disc room + casual mode
				weeklyOption[0] = irandom_range(1,100);//Disc amount
				weeklyOption[1] = irandom_range(1,20);//Disc damage
			break;
		}
		var fileName = file_find_first("w*", 0);
		totalWeeklies = defaultTotalWeeklies;
		defaultTotalWeeklies = 0;
		while (fileName != "")
		{
			totalWeeklies ++;
			fileName = file_find_next();
		}
		totalWeeklies = max(totalWeeklies,0);
		file_find_close();
		var existingWeeklyFile = file_find_first("w" + string(totalWeeklies) + "_ntultraweekly*",0);
		show_debug_message("existingWeeklyFile: " + string(existingWeeklyFile));
		if (existingWeeklyFile != "")
		{
			//Weekly exists is it accurate??
			if (existingWeeklyFile != "w" + string(totalWeeklies) + "_ntultraweekly"+string(year)+"-"+string(week)+"+"+string(weekGamemode)+".sav")
				totalWeeklies ++;
		}
		file_find_close();
		show_debug_message("new week " + string(totalWeeklies));
		weeklySaveFileString = "w" + string(totalWeeklies) + "_ntultraweekly"+string(year)+"-"+string(week)+"+"+string(weekGamemode)+".sav";
	}
}
