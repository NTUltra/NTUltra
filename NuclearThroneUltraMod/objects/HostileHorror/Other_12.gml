/// @description Go to RAD
var nr = instance_nearest(x,y,Rad);
if nr != noone && instance_exists(nr) && !collision_line(x, y, nr.x, nr.y, Wall, 0, 0)
{
	motion_add(point_direction(x,y,nr.x,nr.y),acc*2);
	walk = alarm[1];
	if hspeed > 0
		right = 1
	else if hspeed < 0
		right = -1
}