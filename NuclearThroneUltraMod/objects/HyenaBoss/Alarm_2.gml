/// @description Leaping
spr_idle_use = spr_idle_normal;
spr_walk = spr_walk_normal;
spr_hurt = spr_hurt_normal;
forceAnimation = 0;
if sprite_index == spr_hurt
	sprite_index = spr_idle;
alarm[4] = (sprite_get_number(spr_leap_end)/image_speed) + 1