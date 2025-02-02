/// @description FX
alarm[3] = 1;
//repeat(2)
	with instance_create(x + random_range(8,-8),y + random_range(8,-8),PlutoFX)
	{
		sprite_index = sprVoidBulletTrail;
		image_index = irandom(image_number - 1);
		motion_add(other.direction,1);
	}