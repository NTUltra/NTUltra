if impactWristed && speed > 4.4
{
	with other
	{
		instance_destroy()
		instance_create(x,y,FloorExplo)
	}
	snd_play(sndCorpseBounce,0.3,true);
	instance_create(x+hspeed,y+vspeed,SmallWallBreak);
}
move_bounce_solid(false)
speed *= 0.99;