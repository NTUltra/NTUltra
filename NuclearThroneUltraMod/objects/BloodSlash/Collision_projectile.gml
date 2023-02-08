/// @description Can potentially destroy squares
event_inherited();
if destroyAll && team != other.team
{
	if typ == 0 && !canBeMoved
	{
		var d = point_distance(xstart,ystart,other.x,other.y) - 1;
		x = xstart + lengthdir_x(d,image_angle);
		y = ystart + lengthdir_y(d,image_angle);
		image_xscale = point_distance(x,y,xstart,ystart)*0.5
	}
	else
	{
		instance_destroy();	
	}
}