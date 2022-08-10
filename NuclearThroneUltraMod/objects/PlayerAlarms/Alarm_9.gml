/// @description Crown of freedom enemies
//Somewhat try to keep enemy in area
if instance_exists(Floor)
with enemy
{
	var n = instance_nearest(x,y,Floor)
	if n != noone && point_distance(x,y,n.x+8,n.y+8) > 140//200
	{
		direction = point_direction(x,y,n.x+8,n.y+8);
		speed += 1;
		walk += 20;
	}
}
alarm[9] = 1;