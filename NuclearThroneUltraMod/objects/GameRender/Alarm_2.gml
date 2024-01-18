/// @description GameOver
alarm[2] = 1;
if !instance_exists(Player) and !instance_exists(GenCont) && !instance_exists(PlayerSpawn) && !instance_exists(CrownOfDeathBoom)
	gameovertime += 1
else
	gameovertime = 0;
	
if instance_exists(Vlambeer)
{
	alarm[2] = 0;
	alarm[6] = 0;
	alarm[7] = 0;
	gameovertime = 0;
}