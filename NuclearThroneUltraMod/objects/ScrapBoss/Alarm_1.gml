if ammo > 0
{
	event_user(0);
}
else
{
	spr_hurt = spr_actual_hurt;
	spr_idle = spr_stop;
	image_index = 0
	sprite_index = spr_idle
	alarm[0] = actTime*2
}

