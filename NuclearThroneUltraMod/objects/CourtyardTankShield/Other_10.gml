/// @description Enable
if sprite_index != spr_default && sprite_index != spr_spawn
{
	sprite_index = spr_spawn;
	image_index = 0;
	image_speed = 0.4;
	alarm[0] = 15;
}
visible = true;