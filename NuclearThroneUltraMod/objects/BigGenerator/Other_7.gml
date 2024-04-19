/// @description Swap idle and hurt
if sprite_index == spr_activate
{
	sprite_index = spr_active;
	spr_hurt = spr_hurt_actual;
	spr_idle = spr_active;
	image_index = 0;
}