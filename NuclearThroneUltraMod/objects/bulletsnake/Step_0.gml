/// @description Coool sigzag
if alarm[2] < 1
{
	x += lengthdir_x(sin(time)*offset,direction+angle);
	y += lengthdir_y(sin(time)*offset,direction+angle);
	time += tdir;
	image_angle = point_direction(xprevious,yprevious,x,y)+90;
}