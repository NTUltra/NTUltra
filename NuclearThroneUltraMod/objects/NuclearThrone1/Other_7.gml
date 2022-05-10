/// @description Transition phases
if (sprite_index == spr_switch_on)
{
	sprite_index = spr_on;
	spr_idle = spr_on;
	spr_hurt = spr_on;
}
if (sprite_index == spr_activate)
{
	image_index = image_number -1;
	image_speed = 0;
	meleedamage = 10;
}
if active && ! intro{
	if sprite_index == spr_hurt
	{
		if disable
			spr_hurt = spr_deactivated_hurt;
		else
			spr_hurt = spr_middle_hurt;
		sprite_index = spr_idle;	
	}
}