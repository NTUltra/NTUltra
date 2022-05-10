/// @description Reset sprites
spr_idle = spr_normal;
spr_hurt = spr_normal_hurt;
if sprite_index != spr_hurt
{
	sprite_index = spr_idle;
	motion_add(direction,1);
}
