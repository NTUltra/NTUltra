/// @description Do some shit bro
event_inherited()

//Circling

if walk > 0
{
	walk -= 1
	motion_add(direction,acc)
	
}
else
{
	vspeed = sin(time) * 3;
	hspeed = cos(time) * 3;
}
var n = instance_nearest(x,y,Floor)
var o = 16;
if n != noone
{
	if n.object_index == FloorExplo
		o = 8;
	if point_distance(x,y,n.x+o,n.y+o) > 48
	{
		direction = point_direction(x,y,n.x + o,n.y + o);
		//motion_add(point_direction(n.x+o,n.y+o,x,y),acc * 1.5);
	}
}
if speed > maxSpeed
	speed = maxSpeed
	