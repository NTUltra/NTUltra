/// @description xxx
if collision_line(x,y,xstart,ystart,Wall,false,false)
{
	x = xstart;
	y = ystart;
	speed *= 0.5;
	alarm[5] = 1;
}