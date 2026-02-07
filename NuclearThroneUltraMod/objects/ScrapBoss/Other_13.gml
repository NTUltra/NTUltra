/// @description Missile
snd_play(sndBigDogMissile)
repeat(missileAmount)
{
	with instance_create(x,y,missileType)
	{
		maxSpeed += 0.125;
		motion_add(random(360),2)
		team = other.team;
	}
}

alarm[0] = actTime*1.5