/// @description Ink it up
BackCont.shake += 2;
image_angle += rotation * 0.5;
with instance_create(x + lengthdir_x(16,image_angle),y + lengthdir_y(16,image_angle),BloodStreak)
{
	speed = other.speed;
	direction = other.direction;
	image_angle = other.image_angle + random_range(15,-15);
	motion_add(image_angle,other.blobSpeed);
	sprite_index = other.inkSprite;
	image_xscale += random_range(-0.1,0.1);
	image_yscale += random_range(-0.1,0.1);
}
with instance_create(x + lengthdir_x(16,image_angle + 360),y + lengthdir_y(16,image_angle + 360),BloodStreak)
{
	speed = other.speed;
	direction = other.direction;
	image_angle = other.image_angle + 180 + random_range(15,-15);
	motion_add(image_angle,other.blobSpeed);
	sprite_index = other.inkSprite;
	image_xscale += random_range(-0.1,0.1);
	image_yscale += random_range(-0.1,0.1);
}
alarm[3] = blobFx;