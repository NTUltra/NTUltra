/// @description FX
var ang = random(360);
repeat(12)
{
	with instance_create(x+lengthdir_x(16,ang),y+lengthdir_y(16,ang),LaserCharge)
	{
		motion_add(ang,6)
		alarm[0] = 6;
	}
	ang += 30;
}