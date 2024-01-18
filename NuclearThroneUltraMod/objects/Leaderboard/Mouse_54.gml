/// @description Continue
if alarm[1] < 1
{
	UberCont.runScore = [];
	UberCont.runRace = [];
	UberCont.dailyDay = UberCont.totalDailies;
	UberCont.weeklyWeek = UberCont.totalWeeklies;
	UberCont.isLeaderboardGamemode = false;
	UberCont.viewDailyGamemode = false;
	network_destroy(serverSocket);
	room_goto(romGame);
}