/// @description Can break wall when moving
if walk > 0
{
	walk --;
	with other
	{
		instance_destroy()
		instance_create(x,y,FloorExplo);
	}
	instance_create(x,y,BigWallBreak);
}
else
{
	move_bounce_solid(true);
	speed *= 0.5;
}