/// @description Is player close?
alarm[0] = 5;
if instance_exists(Player) && visible && instance_exists(VoidSeer) && VoidSeer.sprite_index == VoidSeer.spr_idle
{
	if sprite_index == spr_intro && image_speed == 0
	{
		if point_distance(x,y,Player.x,Player.y) < 116
		{
			image_speed = 0.4;
		}
	}
}