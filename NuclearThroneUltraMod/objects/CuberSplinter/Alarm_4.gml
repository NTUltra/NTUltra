/// @description Check distance
alarm[4] = 5;
if instance_exists(Player) && point_distance(x,y,Player.x,Player.y) > 250
	instance_destroy();