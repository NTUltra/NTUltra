/// @description Load entire board
ini_open(dailyScoreSaveFileString);
var scoreLeaderboard = "";
var i = 0;
while(ini_key_exists("scorelb",i))
{
	scoreLeaderboard += ini_read_string("scorelb",i,"")+"|";
	i++;
}
ini_close();
totalScoreEntries = i;
scoreLeaderboardString = scoreLeaderboard;
scoreLeaderboardString = string_replace_all(scoreLeaderboardString,"|","\n");

ini_open(dailyRaceSaveFileString);
var raceLeaderboard = "";
var i = 0;
while(ini_key_exists("racelb",i))
{
	raceLeaderboard += ini_read_string("racelb",i,"")+"|";
	i++;
}
ini_close();
totalRaceEntries = i;
raceLeaderboardString = raceLeaderboard;
raceLeaderboardString = string_replace_all(raceLeaderboardString,"|","\n");