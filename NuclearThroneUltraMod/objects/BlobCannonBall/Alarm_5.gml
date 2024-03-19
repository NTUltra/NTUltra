/// @description Ink it up
with instance_create(x,y,BloodStreak)
{
	speed = other.speed;
	direction = other.direction;
	image_angle = other.image_angle+240 + random_range(15,-15)
	motion_add(image_angle,3);
	sprite_index = sprInkBlobSplat;
}

with instance_create(x,y,BloodStreak)
{
	speed = other.speed;
	direction = other.direction;
	image_angle = other.image_angle+240 + 180 + random_range(15,-15)
	motion_add(image_angle,3);
	sprite_index = sprInkBlobSplat;
}
alarm[5] = blobFx;