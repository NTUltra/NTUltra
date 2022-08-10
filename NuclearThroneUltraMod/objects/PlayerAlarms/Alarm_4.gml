/// @description Crown of freedom/ throne 2 projectiles
with projectile
{
	if point_distance(x,y,other.x,other.y) > 400
		instance_destroy(id);
}

alarm[4] = 20;