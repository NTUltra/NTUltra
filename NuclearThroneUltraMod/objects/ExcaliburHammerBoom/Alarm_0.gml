/// @description BOOM
var len = 68;
snd_play(sndExplosion);
BackCont.shake += 15
with instance_create(x+lengthdir_x(len,image_angle),y+lengthdir_y(len,image_angle),ExcaliburBoom)
{
	direction = other.image_angle;
	image_angle = other.image_angle;
	speed = other.speed;
	depth = other.depth + 1;
}
Sleep(20);