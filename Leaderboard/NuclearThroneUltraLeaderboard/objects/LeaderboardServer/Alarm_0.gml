/// @description every so often check for the day (init)
alarm[0] = 600;
var yesterday = day;
day = date_date_string(date_current_datetime());
if day != yesterday
{
	show_debug_message("new day");
	var byteSeed = 0;
	var byteSize = string_byte_length(day);
	for (var i = 0; i < byteSize; i++) {
		byteSeed = (byteSeed + string_byte_at(day, i)) << 1;
	}
	todaySeed = byteSeed;
	dailyScoreSaveFileString="ntultradailyscore"+string(day)+".sav";
	dailyRaceSaveFileString="ntultradailyrace"+string(day)+".sav";
	scoreLeaderboardString = "";
	raceLeaderboardString = "";
}