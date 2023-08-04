/// @description Impact wrist home
if speed > 6 && instance_exists(enemy)
{
	var n = instance_nearest(x,y,enemy)
	if instance_exists(n) && n.team != 2 && point_distance(x,y,n.x,n.y) < 96
	{
		var dir = point_direction(x,y,n.x,n.y);
		motion_add(dir,0.35);
	}
	alarm[1] = 2;
}