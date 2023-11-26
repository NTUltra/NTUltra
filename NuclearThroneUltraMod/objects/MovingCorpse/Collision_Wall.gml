if impactWristed && speed > 4.6
{
	with other
	{
		instance_destroy()
		instance_create(x,y,FloorExplo)
	}
	snd_play(sndCorpseBounce,0.3,true,true);
	instance_create(x+hspeed,y+vspeed,SmallWallBreak);
}
move_bounce_solid(false)
move_outside_solid(direction,8);
speed *= 0.96;