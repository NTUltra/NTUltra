/// @description every so often check for the day (init)
alarm[0] = 600;
var yesterday = day;
day = date_date_string(date_current_datetime());
var lastweek = week;
week = date_get_week(date_current_datetime());

if day != yesterday || forceDayPass
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
		var seedweek = string(week) + string(year);
		show_debug_message(week);
		show_debug_message(seedweek);
		var byteSeed = 0;
		var byteSize = string_byte_length(seedweek);
		for (var i = 0; i < byteSize; i++) {
			byteSeed = (byteSeed + string_byte_at(seedweek, i)) << 1;
		}
		weekSeed = byteSeed;
		random_set_seed(weekSeed);
		weekGamemode = irandom_range(1,36);
		//Manual gamemode injection here
		weeklyOption = [];
		if weekGamemode == 26//Daily race
			weekGamemode = 1;
		switch (weekGamemode)
		{
			case 1://One weapon only
				weeklyOption[0] = irandom_range(1,maxwep);
				while (weeklyOption[0] == 69 || weeklyOption[0] == 298 || weeklyOption[0] == 1)
				{
					weeklyOption[0] = irandom_range(1,maxwep);
				}
			break;
			case 17://CHEATS
				weekGamemode = 40;//Hard mode infinite levels
			break;
			case 19://Disc room
				weeklyOption[0] = irandom_range(1,100);//Disc amount
				weeklyOption[1] = irandom_range(1,20);//Disc damage
			break;
			case 35://God frog
				weekGamemode = choose(40,34);//Hard mode
			break;
			case 26://Daily race
				weekGamemode = 38;//all mutations infinite levels
			break;
			case 27://Daily score
				weekGamemode = 25;//Survival arena
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
