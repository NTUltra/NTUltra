/// @description Cant be killed

if alarm[4] < 1
	event_inherited();
else
{
	speed = 0;
	sprite_index = spr_idle;
}

