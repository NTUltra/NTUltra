/// @description Crown of freedom/ throne 2 projectiles
if instance_exists(Player)
with projectile
{
	if point_distance(Player.x,Player.y,other.x,other.y) > 300
		instance_destroy(id);
}

alarm[4] = 20;