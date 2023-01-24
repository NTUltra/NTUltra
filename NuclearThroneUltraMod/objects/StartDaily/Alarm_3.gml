/// @description Continue to challenge run
UberCont.useSeed = true;
SetSeed();
UberCont.randomDailyMod = irandom_range(1,18);
UberCont.chestRan = 0
network_destroy(serverSocket);
instance_destroy();
with Player
{
subarea = 0;	
}
room_goto(romGame);