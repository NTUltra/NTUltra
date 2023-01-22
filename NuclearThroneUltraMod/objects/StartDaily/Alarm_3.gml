/// @description Continue to weekly
SetSeed();
UberCont.randomDailyMod = irandom_range(1,18);
network_destroy(serverSocket);
instance_destroy();
with Player
{
subarea = 0;	
}
room_goto(romGame);