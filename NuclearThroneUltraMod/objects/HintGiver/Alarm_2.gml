/// @description Still close?
if instance_exists(Player)
{
	if point_distance(x,y,Player.x,Player.y) < 96
	{
		active = true;
		image_speed = 0.4;
		if sprite_index != spr_idle
			sprite_index = spr_activate;
	}
	else
	{
		active = false;
		sprite_index = spr_deactivate;	
	}
}