/// @description Crown of freedom
with projectile
{
	if point_distance(x,y,other.x,other.y) > 400
		instance_destroy(id);
}
//Somewhat try to keep enemy in area
if instance_exists(Floor)
with enemy
{
	var n = instance_nearest(x,y,Floor)
	if n != noone && point_distance(x,y,n.x,n.y) > 200
	{
		direction = point_direction(x,y,n.x,n.y);
		speed += 1;
	}
}
alarm[4] = 60;