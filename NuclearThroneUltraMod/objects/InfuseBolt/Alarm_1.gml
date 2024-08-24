/// @description xxx
if stickTarget != noone && instance_exists(stickTarget)
with stickTarget
{
	DealDamage(4)
	sprite_index = spr_hurt
	image_index = 0
	motion_add(other.direction,3)
}
