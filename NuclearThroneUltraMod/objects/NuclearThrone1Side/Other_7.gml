/// @description Anim handle
if sprite_index == spr_hurt
{
	if isLeft
	{
		if disable
			spr_hurt = spr_left_deactivated_hurt;
		else
			spr_hurt = spr_left_hurt;
	}
	else
	{
		if disable
			spr_hurt = spr_right_deactivated_hurt;
		else
			spr_hurt = spr_right_hurt;	
	}
	sprite_index = spr_idle;
}