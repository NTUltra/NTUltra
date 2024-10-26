/// @description Animation handling
if alarm[0] < 1 && sprite_index == spr_hurt && image_index > 2
	sprite_index = spr_idle
if my_health <= 0
	instance_destroy();