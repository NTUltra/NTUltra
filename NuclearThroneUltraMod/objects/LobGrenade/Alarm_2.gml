/// @description Stall mid air
if bounce
	alarm[4] = 1;
else
{
	alarm[4] = 4;
	image_speed = 0.4;
	with instance_create(x,y,dropGrenadeType) {
		direction = other.direction + (random_range(-10,10)*other.accuracy);
		image_angle = direction;
		rotationSpeed = other.rotationSpeed * 1.5;
		speed = other.speed * 0.8;
	}
}
