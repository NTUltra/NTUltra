/// @description Handle animation stages
if sprite_index == spr_hide
{
	image_speed = 0;
	image_index = image_number - 1;
	alarm[2] = 20 + irandom(30);
}
else if sprite_index == spr_rise
	instance_destroy();