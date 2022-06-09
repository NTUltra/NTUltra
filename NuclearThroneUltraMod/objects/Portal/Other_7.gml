if sprite_index = sprPortalSpawn
{
	image_speed = 0.4;
//instance_create(x,y,PortalShock);
if type = 1
{
sprite_index = sprPortal
if inverted
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
}
if sprite_index == sprBigPortalSpawn
{
	sprite_index = sprBigPortal;	
}
if sprite_index = sprPortalDisappear or sprite_index = sprProtoPortalDisappear or sprite_index = sprPortalInvertedDisappear || sprite_index = sprBigPortalDisappear || sprite_index == sprPinkPortalDisappear
{
	var canRestart = false;
	with Player
	{
		reload = min(reload,0)
		breload = min(breload,0)
		creload = min(creload,0)
	if my_health >= 0
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

