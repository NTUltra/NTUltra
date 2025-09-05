/// @description FX
alarm[3] = 1;
BackCont.shake += image_xscale * 2;
repeat(2)
	with instance_create(x + random_range((distanceOffset * image_xscale),-(distanceOffset * image_xscale)),y + random_range((distanceOffset * image_xscale),-(distanceOffset * image_xscale)),PlutoFX)
	{
		sprite_index = sprVoidBulletTrail;
		image_index = irandom(image_number - 1);
		motion_add(other.direction,1);
	}