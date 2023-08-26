/// @description Pre Fire
alarm[2] = fireDelay + 4;
if alarm[6] < 1
{
	speed *= 0.25;
	alarm[3] = 4;
	sprite_index = spr_fire;
}