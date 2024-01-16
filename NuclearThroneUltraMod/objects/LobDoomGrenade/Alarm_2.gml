/// @description Stall mid air
if bounce
	alarm[4] = 1;
else
{
	alarm[4] = 4;
	image_speed = 0.4;
	snd_play(choose(sndDoomGuy1,sndDoomGuy2,sndDoomGuy3,sndDoomGuy4,sndDoomGuy5),0.1);
	with instance_create(x,y,DropDoomGrenade) {
		direction = other.direction + (random_range(-10,10)*other.accuracy);
		image_angle = direction;
		rotationSpeed = other.rotationSpeed * 1.5;
		speed = other.speed * 0.8;
	}
}
