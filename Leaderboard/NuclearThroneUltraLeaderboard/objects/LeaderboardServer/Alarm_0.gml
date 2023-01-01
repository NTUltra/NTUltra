/// @description every so often check for the day (init)
alarm[0] = 600;
var yesterday = day;
day = date_date_string(date_current_datetime());
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
	show_debug_message("scopre " + string(dailyScoreSaveFileString));
	show_debug_message("race " + string(dailyRaceSaveFileString));
	scoreLeaderboardString = "";
	raceLeaderboardString = "";
}