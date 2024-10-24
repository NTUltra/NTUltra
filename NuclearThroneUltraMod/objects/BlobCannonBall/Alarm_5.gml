/// @description Ink it up
with instance_create(x + lengthdir_x(16,image_angle),y + lengthdir_y(16,image_angle),BloodStreak)
{
	speed = other.speed;
	direction = other.direction;
	image_angle = other.image_angle+240 + random_range(15,-15)
	motion_add(image_angle,other.blobSpeed);
	sprite_index = other.inkSprite;
}

with instance_create(x + lengthdir_x(16,image_angle + 360),y + lengthdir_y(16,image_angle + 360),BloodStreak)
{
	speed = other.speed;
	direction = other.direction;
	image_angle = other.image_angle+240 + 180 + random_range(15,-15)
	motion_add(image_angle,other.blobSpeed);
	sprite_index = other.inkSprite;
}
alarm[5] = blobFx;