/// @description Simple wall and explosion collision
alarm[2] = 2;
if collision_line(x,y,xprev,yprev,Wall,false,false)
{
	speed *= 0.8;
	if speed < 1
	{
		instance_destroy();
		exit;
	}
		
	x = xprev;
	y = yprev;
	direction += 180 + random_range(30,-30);
	
	scrForcePosition60fps();
}
if place_meeting(x,y,Explosion)
{
	motion_add(point_direction(other.x,other.y,x,y),4);
}