/// @description Home
var n = instance_nearest(x,y,enemy)
if n != noone && n.team != team && point_distance(x,y,n.x,n.y) < 128
{
	if alarm[0] < 1
	{
		alarm[0] = 60;
		alarm[3] = alarm[0] - 12;
	}
	motion_add(point_direction(x,y,n.x,n.y),2);
}
alarm[4] = 1;