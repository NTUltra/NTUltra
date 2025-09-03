/// @description Vine
//var msk = mask_index;
//mask_index = sprTangleVine;
if !collision_point(x,y,Tangle,false,false)//!place_meeting(x,y,Tangle)
{
	with instance_create(x,y,Tangle)
	{
		tangleNumber = other.tangleNumber;
		depth = 1;
		dustAmount = 1;
		sprite_index = sprTangleVine;
		spr_disappear = sprTangleVineDisappear;
		if instance_number(Tangle) % 2 == 0
			image_yscale *= -1;
		mask_index = sprTangleVine;
		image_angle = other.direction;
	}
}
//mask_index = msk;
alarm[1] = 1;