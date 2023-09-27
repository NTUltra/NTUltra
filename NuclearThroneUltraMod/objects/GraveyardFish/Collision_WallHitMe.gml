/// @description Can break wall when moving
if walk > 0
{
	walk --;
	with other
	{
		instance_destroy()
		with instance_create(x,y,FloorExplo)
			alarm[3] = 0;
		//with instance_create(x,y,FloorExplo)
			//alarm[3] = 0;
	}
	instance_create(x,y,BigWallBreak);
}
else
{
	move_bounce_solid(true);
	speed *= 0.5;
}