/// @description Dead
with instance_create(x,y,Shell)
{
	direction= other.direction;
	speed = other.speed + 3;
	sprite_index = other.sprite_index;
	image_index = 0;
	image_speed = 0;
}