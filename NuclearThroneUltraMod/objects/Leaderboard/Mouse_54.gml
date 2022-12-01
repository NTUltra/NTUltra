/// @description Continue
if alarm[1] < 1
{
	UberCont.runScore = "";
	network_destroy(serverSocket);
	room_goto(romGame);
}