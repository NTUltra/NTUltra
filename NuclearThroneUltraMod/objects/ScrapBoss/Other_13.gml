/// @description xxx
snd_play(sndBigDogMissile)
repeat(missileAmount)
{
	with instance_create(x,y,missileType)
	{
		motion_add(random(360),2)
		team = other.team;
	}
}

alarm[0] = actTime*2