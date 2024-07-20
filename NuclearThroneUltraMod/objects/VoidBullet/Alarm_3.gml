/// @description FX
alarm[3] = 1;
repeat(2)
	with instance_create(x + random_range(12,-12),y + random_range(12,-12),PlutoFX)
	{
		sprite_index = sprVoidBulletTrail;
		image_index = irandom(image_number - 1);
		motion_add(other.direction,1);
	}