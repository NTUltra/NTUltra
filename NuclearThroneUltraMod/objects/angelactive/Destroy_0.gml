/// @description Little animation
BackCont.shake += 5;
with instance_create(x,y,AnimDestroyTop)
{
	sprite_index = sprAngelActiveDisappear;
	speed = other.speed * 0.5;
	image_angle = other.image_angle;
	direction = other.direction;
}