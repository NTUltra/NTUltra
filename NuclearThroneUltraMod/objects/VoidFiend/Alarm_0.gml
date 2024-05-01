/// @description Is player close?
alarm[0] = 5;
if instance_exists(Player) && visible
{
	if sprite_index == spr_intro && image_speed == 0
	{
		if point_distance(x,y,Player.x,Player.y) < 148
		{
			image_speed = 0.4;
			with VoidBench
			{
				image_speed = 0.4;
			}
		}
	}
}