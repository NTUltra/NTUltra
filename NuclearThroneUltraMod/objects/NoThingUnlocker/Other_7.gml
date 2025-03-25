/// @description Transition
if sprite_index == sprNoThingUnlockOutro
{
	image_index = image_number - 1;
	image_speed = 0;
}
else if sprite_index == spr_intro
{
	sprite_index = spr_idle;
}
