/// @description Hard mode spawn in enemies
with instance_create(x,y,InvertedPalaceGuardian)
{
	fire = false;
	sprite_index = spr_disappear;
	image_index = sprite_get_number(spr_disappear)-2;
	spr_idle = spr_disappear;
	spr_walk = spr_disappear;
	alarm[1] = 30;
}
alarm[8] = 120 - clamp(loops*10,0,60);