event_inherited()

if walk > 0
{
	walk -= 1
	var n = instance_nearest(x,y,Floor)
	if n != noone
	{
		var o = 16;
		if n.object_index == FloorExplo
			o = 8;
		if point_distance(x,y,n.x + o,n.y + o) > 48
		{
			direction = point_direction(x,y,n.x + o,n.y + o);
		}
	}
	motion_add(direction,acc)
}

if speed > maxSpeed
speed = maxSpeed

