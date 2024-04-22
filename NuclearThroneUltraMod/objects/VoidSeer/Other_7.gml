/// @description Transition
if sprite_index == spr_intro
{
	sprite_index = spr_idle;
	alarm[2] = 30;
	BackCont.shake += 10;
}