/// @description Transition
if sprite_index == spr_intro
{
	sprite_index = spr_idle;
	alarm[2] = 30;
	BackCont.shake += 10;
}
if sprite_index == spr_dead
{
	image_speed = 0;
	image_index = image_number - 1;
	BackCont.shake += 10;
}