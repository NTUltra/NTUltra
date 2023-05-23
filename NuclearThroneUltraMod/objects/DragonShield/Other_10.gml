/// @description Enable
debug("ENABLE SHIELD");
if sprite_index != spr_default
{
	sprite_index = spr_spawn;
	image_index = 0;
	image_speed = 0.4;
	alarm[0] = 40;
}
visible = true;