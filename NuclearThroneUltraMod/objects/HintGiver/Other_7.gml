/// @description Animation handler
if sprite_index == spr_activate {
	sprite_index = spr_idle;
} else if sprite_index == spr_deactivate {
	image_speed = 0;
	image_index = image_number - 1;
}