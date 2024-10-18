if instance_exists(Player)
{if Player.speed = 0
alarm[2] = 2
else
{
sprite_index = sprInvertedLilHunterLiftStart
image_index = 0
with BoltStick
{
	if target == other.id
		instance_destroy();
}
with Leach
{
	if owner == other.id
		instance_destroy();
}
my_health = min(maxhealth, my_health);
instance_change(InvertedLilHunterFly,false)
snd_play_2d(sndLilHunterLaunch)
}
}else
{
sprite_index = sprInvertedLilHunterLiftStart
image_index = 0
with BoltStick
{
	if target == other.id
		instance_destroy();
}
with Leach
{
	if owner == other.id
		instance_destroy();
}
my_health = min(maxhealth, my_health);
instance_change(InvertedLilHunterFly,false)

snd_play_2d(sndLilHunterLaunch)
}

