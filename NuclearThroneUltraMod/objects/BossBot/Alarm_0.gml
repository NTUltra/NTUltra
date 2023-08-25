/// @description Move outside of wall
if instance_exists(GenCont)
	alarm[0] = 10;

var n = instance_nearest(x,y,Floor)
if n != noone
{
	var d = point_direction(x,y,n.x,n.y);
	while place_meeting(x,y,Wall)
	{
		x += lengthdir_x(4,d);
		y += lengthdir_y(4,d);
	}
}