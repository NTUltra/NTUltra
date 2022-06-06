if impactWristed && speed > 4
{
	with other
	{
		instance_destroy()
		instance_create(x,y,FloorExplo)
	}
	instance_create(x+hspeed,y+vspeed,SmallWallBreak);
}
move_bounce_solid(false)