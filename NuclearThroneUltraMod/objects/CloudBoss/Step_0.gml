/// @description Do some shit bro
event_inherited()

if walk > 0
{
	walk -= 1
	motion_add(direction,acc);
	motion_add(point_direction(x,y,xstart,ystart),acc * 0.25);
	
}
if point_distance(xstart,ystart,x,y) > 500
{
	direction = point_direction(x,y,xstart,ystart);	
}
else
{
	var n = instance_nearest(x,y,Floor)
	var o = 16;
	if n != noone
	{
		if n.object_index == FloorExplo
			o = 8;
		if point_distance(x,y,n.x+o,n.y+o) > 96
		{
			direction = point_direction(x,y,n.x + o,n.y + o);
			//motion_add(point_direction(n.x+o,n.y+o,x,y),acc * 1.5);
		}
	}
}
if walk > 0
{
	if speed > maxSpeed + 1
		speed = maxSpeed + 1;
}
else if speed > maxSpeed - 1
	speed = maxSpeed
if alarm[5] > 0
{
	if alarm[5] < sneakTime
	{
		image_alpha = (sneakTime - alarm[5]) / sneakTime
	}
	speed = 0;
	if instance_exists(Player)
	{
		x = Player.x;
		y = Player.y + 96;
		scrForcePosition60fps();
	}
}
if alarm[6] > 0
{
	vspeed = -1;
	hspeed = 0;
}