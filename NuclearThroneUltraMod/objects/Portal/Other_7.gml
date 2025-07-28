if alarm[3] > 0
	exit;
if sprite_index = sprPortalSpawn
{
	image_speed = 0.4;
//instance_create(x,y,PortalShock);
if type = 1
{
sprite_index = sprPortal
if inverted || (scrIsInInvertedArea() && instance_exists(Player) && Player.subarea < 3)
	sprite_index = sprPortalInverted
}
if type = 3
sprite_index = sprProtoPortal
}
if sprite_index = sprPinkPortalSpawn
{
	image_speed = 0.4;
	sprite_index = sprPinkPortal
	if type = 3
	sprite_index = sprProtoPortal
		image_index = 0;

}
if sprite_index = sprPopoPortalStart
{
	image_speed = 0.4;
	sprite_index = sprPopoPortal
	if type = 3
		sprite_index = sprProtoPortal
	image_index = 0;
}
if sprite_index == sprBigPortalSpawn
{
	sprite_index = sprBigPortal;	
}
if sprite_index = sprPortalDisappear or sprite_index = sprProtoPortalDisappear ||
sprite_index = sprPortalInvertedDisappear || sprite_index = sprBigPortalDisappear || sprite_index == sprPinkPortalDisappear
|| sprite_index == sprPopoPortalDisappear
{
	var canRestart = false;
	with Player
	{
		//reload stuff
		var lowa = 0;
		var lowb = 0;
		var lowc = 0;
		if skill_got[35]
		{
			lowa = wep_load[wep]*-puffyCheekAmount;
			lowb = wep_load[bwep]*-puffyCheekAmount;
			lowc = wep_load[cwep]*-puffyCheekAmount;
		}
		reload = lowa;
		breload = lowb;
		creload = lowc;
		scrFullyReloadHogWeapons();
		if my_health >= 0 || armour >= 0
			canRestart = true;
	}
	audio_stop_sound(sndPortalLoop)
	if canRestart
	{
		room_restart()
		instance_destroy()
	}
	else
	{
		endgame = 100;
		if !instance_exists(PlayerSpawn)
		{
			visible = false;	
		}
	}
}

