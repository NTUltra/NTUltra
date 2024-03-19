/// @description Collision wall
if collision_line(x,y,xPrev,yPrev,Wall,false,false)
{
	instance_destroy()
}
xPrev = x;
yPrev = y;
alarm[2] = 1;