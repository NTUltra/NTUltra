/// @description Intro survival arena
#region intro
if instance_exists(SurvivalArenaStarter)
{
	centerX = SurvivalArenaStarter.x;
	centerY = SurvivalArenaStarter.y;
	x = centerX;
	y = centerY;
}
if instance_exists(Player)
{
	waveNumber = Player.subarea - waveNumberOffset
}
with WepPickup
{
	instance_destroy();
	instance_create(x,y,SurvivalPortal);
}
with chestprop
{
	instance_destroy(id,false);
	instance_create(x,y,SurvivalPortal);
}
with RadChest
{
	instance_destroy(id,false);
	instance_create(x,y,SurvivalPortal);
}
with ChestOpen
{
	instance_destroy(id,false);
	instance_create(x,y,SurvivalPortal);
}
with Corpse
{
	instance_destroy(id,false);
	instance_create(x,y,SurvivalPortal);
}
with WeaponMod
{
	instance_destroy();
	instance_create(x,y,SurvivalPortal);
}
with RerollStation
{
	instance_destroy();
	instance_create(x,y,SurvivalPortal);
}
snd_play(sndCrownBlood);//LETS GO GET EM!
wave = [];
alarm[3] = 5;//Tell time is the difference between these two numbers
alarm[0] = 20;
spawnI = 0;
spawnItell = 0;
#endregion