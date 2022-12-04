/// @description Continue
if alarm[1] < 1
{
	UberCont.runScore = [];
	UberCont.runRace = [];
	network_destroy(serverSocket);
	room_goto(romGame);
}