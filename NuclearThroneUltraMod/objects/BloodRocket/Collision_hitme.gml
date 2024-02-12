/// @description No prop pierce
if other.team != team
{
	instance_destroy()
	with other
	{
		DealDamage(other.dmg)
		sprite_index = spr_hurt
		image_index = 0
		motion_add(other.direction,10)
	}
}







