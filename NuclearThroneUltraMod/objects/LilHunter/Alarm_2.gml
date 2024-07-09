
if instance_exists(Player)
{
	if Player.speed == 0
		alarm[2] = 2
	else
	{
		sprite_index = sprLilHunterLiftStart
		image_index = 0
		with BoltStick
			instance_destroy();
		my_health = min(maxhealth, my_health);
		instance_change(LilHunterFly,false)
		snd_play_2d(sndLilHunterLaunch)
	}
}else
{
	sprite_index = sprLilHunterLiftStart
	image_index = 0
	with BoltStick
		instance_destroy();
	my_health = min(maxhealth, my_health);
	instance_change(LilHunterFly,false)
	snd_play_2d(sndLilHunterLaunch)
}

