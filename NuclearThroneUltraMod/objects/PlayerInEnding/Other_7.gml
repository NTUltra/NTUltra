/// @description Sitting
if spr_go_sit != spr_idle && sprite_index == spr_go_sit
{
	alarm[2] = 0;
	sprite_index = spr_sit;
	if !isFading
		alarm[0] = 60;
}