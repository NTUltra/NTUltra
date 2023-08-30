/// @description Still close?
if instance_exists(Player)
{
	if point_distance(x,y,Player.x,Player.y) < 100
	{
		active = true;
		image_speed = 0.4;
	}
	else
	{
		active = false;
		sprite_index = spr_deactivate;	
	}
}