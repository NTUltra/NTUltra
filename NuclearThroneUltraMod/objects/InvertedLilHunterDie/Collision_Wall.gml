if alarm[4] < 1
{
	move_bounce_solid(false)
	bounces += 1
	if bounces > 5
	{
		speed = 0;
		alarm[4] = 15;
	}

	snd_play(sndExplosionS)
	instance_create(x,y,SmallExplosion)
}