/// @description Bounce
	move_bounce_solid(true);
	snd_play(sndTennisBallHit,0.1);
	bounces--;
	if bounces < 1
		instance_destroy();
	if speed > 12
		speed -= 1;
	rotation *= 1.25;