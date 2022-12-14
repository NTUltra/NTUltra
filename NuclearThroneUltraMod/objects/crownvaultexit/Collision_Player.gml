/// @description Exit
if KeyCont.key_pick[other.p] = 1
{
	KeyCont.key_pick[Player.p] = 2;
	mask_index = mskPickupThroughWall;
	with instance_create(x,y,Portal)
	{
		type = 1
		pullstrength = 3;
		alarm[1] = 1;
		x = other.x;
		y = other.y;
	}
	if Player.curse = 1 or Player.bcurse = 1 or Player.ccurse = 1
	{
		if Player.curse != 0 || Player.bcurse != 0 || Player.ccurse != 0
		{
			snd_play(sndCursedPickupDisappear);
			snd_play(sndCursedReminder);
		}
		repeat(10)
		instance_create(x+random(16)-8,y+random(16)-8,Curse)
	}
	scrExitCrownVault();
}