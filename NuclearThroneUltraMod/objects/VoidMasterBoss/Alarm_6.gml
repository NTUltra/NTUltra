/// @description FX
alarm[6] = 1;
repeat(3)
	with instance_create(x + random_range( 16,-16),y + random_range(16,-24),PlutoFX)
	{
		sprite_index = sprVoidBulletTrail;
		image_index = irandom(image_number - 1);
		vspeed -= 2 + random(2);
	}