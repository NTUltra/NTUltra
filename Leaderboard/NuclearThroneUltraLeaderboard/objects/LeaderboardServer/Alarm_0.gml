/// @description every so often check for the day (init)
alarm[0] = 600;
var yesterday = day;
day = date_date_string(date_current_datetime());
dayNumber = current_day;
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
	todaySeed = scrGetSeedOfDay(dayNumber);
	random_set_seed(todaySeed);
	var gamemodeReturn = scrChooseGamemodes();
	dayGamemode = gamemodeReturn[0];
	dayOption = gamemodeReturn[1];
	show_debug_message(dayOption);
	dailyScoreSaveFileString="ds"+string(totalDailies) + "_ntultradailyscore"+string(day)+".sav";
	dailyRaceSaveFileString=string(totalDailies) + "_ntultradailyrace"+string(day)+".sav";
	biDailyGamemodeSaveFileString = string(totalDailies) + "_ntultradailygamemode"+string(day)+"+"+string(dayGamemode)+".sav";
	scoreLeaderboardString = "";
	raceLeaderboardString = "";
	if week != lastweek
	{
		show_debug_message("WEEK");
		//repeat(52)
		//{
		var weekchecker = date_inc_week(date_current_datetime(), -1);
		var year = min(date_get_year(date_current_datetime()), date_get_year(weekchecker));//In case week crosses the year
		weekSeed = week*100 + year;
		random_set_seed(weekSeed);
		var gamemodeReturn = scrChooseGamemodes();
		weekGamemode = gamemodeReturn[0];
		weeklyOption = gamemodeReturn[1];
		show_debug_message(weeklyOption);
		//week ++;
		//show_debug_message(string(weekGamemode));
		//}
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
