/// @description Ink it up
with instance_create(x,y,BloodStreak)
{
	speed = other.speed;
	direction = other.direction;
	image_angle = other.image_angle+120 + random_range(20,-20)
	motion_add(image_angle,other.blobSpeed);
	sprite_index = other.inkSprite;
	image_xscale += random_range(-0.1,0.1);
	image_yscale += random_range(-0.1,0.1);
}
alarm[4] = blobFx;
