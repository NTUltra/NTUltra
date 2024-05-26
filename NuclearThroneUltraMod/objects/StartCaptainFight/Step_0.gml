/// @description Get hit get angry
if instance_exists(Player) && point_distance(x,y,Player.x,Player.y) < 200
{
	if my_health < previousHealth
	{
		instance_destroy();
	}
}
previousHealth = my_health;