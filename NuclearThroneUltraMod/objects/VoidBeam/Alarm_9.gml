/// @description End particle 2
with instance_create(targetX + lengthdir_x(8 * image_yscale,image_angle - 90),targetY + lengthdir_y(8 * image_yscale,image_angle - 90),PlutoFX)
{
	sprite_index = sprVoidBulletTrail;
	image_index = irandom(image_number - 1);
	motion_add(other.image_angle - 90 + random_range(-10,-30),3 + other.image_yscale);
}
alarm[9] = 6 - min(5,round(image_yscale * 2));