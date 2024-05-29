if instance_exists(LevCont) || instance_exists(GenCont) || instance_exists(CrownIcon)
	exit;
if !UberCont.canMultiCrown
	with Crown
	{
		instance_destroy();	
	}
instance_change(FakeCrown,true)
scrGiveCrownPoints(1);
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
if (canUncurse)
{
	if (Player.curse == 1 || Player.bcurse == 1 || Player.ccurse == 1)
	{
		snd_play_2d(sndUncurse);
		if scrIsCrown(14) {
			snd_play(sndHealthPickup);
			scrHeal(1, true);	
		}
	}
	Player.curse = 0
	Player.bcurse = 0
	Player.ccurse = 0
}
else
{
	snd_play(sndCursedReminder);
}
	with SurvivalWave
		instance_destroy();
	with SurvivalArenaStarter
		instance_destroy();
	with SaveStation
		instance_destroy();
	with BecomeBallBoss
		instance_destroy();
if Player.loops > 3 && !UberCont.hasFoughtInvadingThrone
{
	UberCont.hasFoughtInvadingThrone = true;
	with CrownVaultExit
		instance_destroy();
	with CrownVaultSecretExit
		instance_destroy();
	scrTurnIntoPortalArea();
	instance_create(x,y,BecomeThrone2);
}
else if instance_exists(GuardianStatue)
{
	with instance_nearest(x,y,GuardianStatue)
		my_health = 0
}
else if !instance_exists(CrownGuardian)
{
	with UltraChest
	{
		instance_destroy();
		scrRaddrop(50);
	}
	with instance_create(x,y,Portal)
	{
		type = 3
		pullstrength = 3;
		with Player
		{
			lockout = true;	
		}
		alarm[1] = 1;
	}
}
snd_play(Player.snd_crwn)

