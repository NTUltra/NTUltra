/// @description Stall mid air Drop a big nade
if bounce
	alarm[4] = 1;
else
{
	alarm[4] = 3;
	image_speed = 0.4;
	with instance_create(x,y,LobGrenade) {
		direction = other.direction + (random_range(-10,10)*other.accuracy);
		image_angle = direction;
		rotationSpeed = other.rotationSpeed * 1.5;
		speed = other.speed * 0.9;
		scale = 2;
		image_xscale = scale;
		image_yscale = scale;
		alarm[4] = 2;
	}
}
