/// @description U close?
alarm[1] = 10;
if instance_exists(Player) && alarm[2] < 1
{
	if point_distance(x,y,Player.x,Player.y) < 100
	{
		alarm[2] = 20;
	}
	else
	{
		active = false;
		sprite_index = spr_deactivate;	
	}
}