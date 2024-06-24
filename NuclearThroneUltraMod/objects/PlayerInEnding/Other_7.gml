/// @description Sitting
if spr_go_sit != spr_idle && sprite_index == spr_go_sit
{
	sprite_index = spr_sit;
	alarm[0] = 60;
}