with Crown
{
	instance_destroy();	
}
instance_change(Crown,true)
Player.crownpoints += 1
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

Player.curse = 0
Player.bcurse = 0
Player.ccurse = 0
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
		alarm[1] = 1;
	}
}
snd_play(Player.snd_crwn)

