/// @description Exit
with CrownGuardian
{
	raddrop = 0;
}
with Player
	isOnInteractable = true;
if KeyCont.key_pick[other.p] = 1 && !instance_exists(Throne2)
{
	KeyCont.key_pick[Player.p] = 2;
	mask_index = mskPickupThroughWall;
	with instance_create(x,y,Portal)
	{
		type = 1
		pullstrength = 3;
		x = other.x;
		y = other.y;
		scrForcePosition60fps();
		with Player
		{
			lockout = true;
			x = other.x;
			y = other.y;
			scrForcePosition60fps();
		}
		alarm[1] = 1;
	}
	if Player.ultra_got[30] && Player.altUltra
	{
		canUncurse = false;
		if Player.curse
		{
			if Player.bcurse
			{
				Player.ccurse = 1;
			}
			else
			{
				Player.bcurse = 1;	
			}
		}
		else
		{
			Player.curse = 1;
		}
		snd_play_2d(sndCursedChest);
		repeat(20)
			instance_create(x+random(32)-16,y+random(32)-16,Curse)
	}
	else if Player.curse = 1 or Player.bcurse = 1 or Player.ccurse = 1
	{
		if Player.curse != 0 || Player.bcurse != 0 || Player.ccurse != 0
		{
			snd_play(sndCursedPickupDisappear);
			snd_play(sndCursedReminder);
		}
		repeat(10)
		instance_create(x+random(16)-8,y+random(16)-8,Curse)
	}
	if (canUncurse)
	{
		if (Player.curse == 1 || Player.bcurse == 1 || Player.ccurse == 1)
		{
			snd_play_2d(sndUncurse);
			if scrIsCrown(14) {
				snd_play(sndHealthPickup);
				scrHeal(1,true);	
			}
		}
		Player.curse = 0
		Player.bcurse = 0
		Player.ccurse = 0
	} else
	{
		snd_play(sndCursedReminder);
	}
	scrExitCrownVault();
}