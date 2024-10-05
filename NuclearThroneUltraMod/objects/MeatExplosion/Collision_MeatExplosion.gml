var dx = x - other.x;
var dy = y - other.y;
var d = point_direction(0, 0, dx, dy);
if UberCont.normalGameSpeed == 60
{
	x += lengthdir_x(4,d);
	y += lengthdir_y(4,d);
}
else
{
	x += lengthdir_x(8,d);
	y += lengthdir_y(8,d);
}