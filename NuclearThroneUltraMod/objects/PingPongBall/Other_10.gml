/// @description Bounce
	move_bounce_solid(true);
	snd_play(sndPingPongHit,0.1);
	bounces--;
	if bounces < 1
		instance_destroy();
	speed += 3;