if other.team != team
{
instance_destroy()

with other
{
	my_health -= 4
	sprite_index = spr_hurt
	image_index = 0
	motion_add(other.direction,10)
	if object_index == Player {
		hitBy = other.sprite_index;	
	}
}
}

