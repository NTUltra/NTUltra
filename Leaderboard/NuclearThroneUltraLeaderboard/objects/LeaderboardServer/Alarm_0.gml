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
	show_debug_message("start counting " + string(totalDailies));
	defaultTotalDailies = 0;
	while (fileName != "")
	{
		totalDailies ++;
		fileName = file_find_next();
		show_debug_message(fileName);
	}
	file_find_close();
	show_debug_message("new day " + string(totalDailies));
	var byteSeed = 0;
	var byteSize = string_byte_length(day);
	for (var i = 0; i < byteSize; i++) {
		byteSeed = (byteSeed + string_byte_at(day, i)) << 1;
	}
	todaySeed = byteSeed;
	dailyScoreSaveFileString="ds"+string(totalDailies) + "_ntultradailyscore"+string(day)+".sav";
	dailyRaceSaveFileString=string(totalDailies) + "_ntultradailyrace"+string(day)+".sav";
	scoreLeaderboardString = "";
	raceLeaderboardString = "";
	if week != lastweek
	{
		show_debug_message("WEEK");
		var weekchecker = date_inc_week(date_current_datetime(), -1);
		var year = min(date_current_datetime(), date_get_year(weekchecker));//In case week crosses the year
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
				weekGamemode = 34;//Hard mode
			break;
			case 19://Disc room
				weeklyOption[0] = irandom_range(1,100);//Disc amount
				weeklyOption[1] = irandom_range(1,20);//Disc damage
			break;
			case 35://God frog
				weekGamemode = 34;//Hard mode
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
		file_find_close();
		show_debug_message("new week " + string(totalWeeklies));
		weeklySaveFileString = "w"+string(totalWeeklies) + "_ntultraweekly"+string(week)+"+"+string(weekGamemode)+".sav";
	}
}
