var dx = x - other.x;
var dy = y - other.y;
var d = point_direction(0, 0, dx, dy);
if UberCont.normalGameSpeed == 60
{
	x += lengthdir_x(3,d);
	y += lengthdir_y(3,d);
}
else
{
	x += lengthdir_x(6,d);
	y += lengthdir_y(6,d);
}
if myScorchMark != noone
{
	with myScorchMark {
		x = other.x;
		y = other.y;
		scrForcePosition60fps();
	}
}
/*
if myExplosionMask != noone && myExplosionMask != -1 && instance_exists(myExplosionMask) {
	with myExplosionMask
	{
		x = other.x;
		y = other.y;
	}
}
*/