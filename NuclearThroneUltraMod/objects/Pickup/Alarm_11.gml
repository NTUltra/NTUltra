/// @description Simple collisions
if collision_line(xprev,yprev,x,y,Wall,false,false)
{
	move_bounce_solid(false);
	move_outside_solid(direction,8);
	speed = max(speed,1);
}
if !collision_point(x,y,Floor,false,false)
{
	var n = instance_nearest(x,y,Floor);
	var o = 16;
	if n.object_index == FloorExplo
		o = 8;
	direction = point_direction(x,y,n.x+o,n.y+o);
	x += lengthdir_x(2,direction);
	y += lengthdir_y(2,direction);
	speed = max(speed,1);
}
alarm[11] = 5;
xprev = x;
yprev = y;