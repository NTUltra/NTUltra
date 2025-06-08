/// @description xxx
visible = true;
if visitedPortals > 2 && instance_exists(Portal)
{
	var n = instance_nearest(x,y,Portal)
	direction = point_direction(x,y,n.x,n.y) + 180;
	speed = max(speed,1);
}