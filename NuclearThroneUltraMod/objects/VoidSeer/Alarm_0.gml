/// @description Is player close?
alarm[0] = 5;
if instance_exists(Player) && alarm[1] < 1
{
	if sprite_index == spr_intro && image_speed == 0
	{
		if point_distance(x,y,Player.x,Player.y) < 64
		{
			if !killerSequence
			{
				alarm[1] = 20;
			}
			else
			{
				alarm[1] = 60;
			}
		}
	}
}