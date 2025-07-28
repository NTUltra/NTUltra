/// @description Shuffle slightly awawy from other venus rad traps
var n = instance_nearest_notme(x,y,VenusRadTrap)
if n != noone && instance_exists(n)
{
	if point_distance(x,y,n.x,n.y) < 18
	{
		with n {
			x += 4;
			y += 2;
			xstart = x;
			ystart = y;
			scrForcePosition60fps();
		}
		x -= 4;
		y -=  2;
		xstart = x;
		ystart = y;
		scrForcePosition60fps();
	}
}