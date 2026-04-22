/// @description Damage stick target
if stickTarget != noone && instance_exists(stickTarget)
{
	with stickTarget
	{
		DealDamage(5)
		sprite_index = spr_hurt
		image_index = 0
		motion_add(other.direction,3)
	}
}