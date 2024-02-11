/// @description Wall Collision
if (hasWallCollision)
{
	if collision_line(xprev,yprev,x,y,Wall,false,false) || collision_point(x,y,Wall,false,false)
	{
		//scrForcePosition60fps();
		move_bounce_solid(false);
		x = xprev;
		y = yprev;
		do {
			x += lengthdir_x(1,direction);
			y += lengthdir_y(1,direction);
		} until (!collision_point(x,y,Wall,false,false))
	}
	xprev = x;
	yprev = y;
}