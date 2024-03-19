/// @description Ink it up
with instance_create(x,y,BloodStreak)
{
	speed = other.speed;
	direction = other.direction;
	image_angle = other.image_angle+240 + random_range(15,-15)
	motion_add(image_angle,2);
	sprite_index = sprInkBlobSplat;
	image_xscale += random_range(-0.1,0.1);
	image_yscale += random_range(-0.1,0.1);
}
alarm[5] = blobFx;