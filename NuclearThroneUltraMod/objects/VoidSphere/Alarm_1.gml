/// @description Particles
with instance_create(x + random_range(12,-12),y + random_range(12,-12),PlutoFX)
{
	sprite_index = sprVoidBulletTrail;
	image_index = irandom(image_number - 1);
	motion_add(random(360),4);
}
alarm[1] = 1 + irandom(3);