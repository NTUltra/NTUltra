/// @description Dust
if sprite_index != spr_disappear
{
	with instance_create(x + random_range(16,-16),y  + random_range(16,-16),Dust)
	{
		motion_add(other.direction,2);	
	}
	alarm[1] = 1;	
}
