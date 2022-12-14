/// @description Continue
if alarm[1] < 1
{
	UberCont.runScore = [];
	UberCont.runRace = [];
	UberCont.dailyDay = UberCont.totalDailies;
	network_destroy(serverSocket);
	room_goto(romGame);
}