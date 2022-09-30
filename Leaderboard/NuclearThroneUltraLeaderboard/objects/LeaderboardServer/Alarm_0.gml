/// @description every so often check for the day (init)
alarm[0] = 600;
var yesterday = day;
day = date_date_string(date_current_datetime());
if day != yesterday
{
	dailyScoreSaveFileString="ntultradailyscore"+string(day)+".sav";
	leaderboardString = "";
}