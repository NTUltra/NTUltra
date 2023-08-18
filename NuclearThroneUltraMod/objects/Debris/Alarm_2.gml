/// @description Homing debris
alarm[2] = 2;


if speed>3&&instance_exists(enemy)
{
	var n = instance_nearest(x,y,enemy)
	if n != noone && n.team != 2
		motion_add(point_direction(x,y,n.x,n.y),0.2);
}