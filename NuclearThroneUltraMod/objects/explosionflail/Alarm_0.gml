/// @description BOOM
var len = 74;
snd_play(sndExplosion);
with instance_create(x+lengthdir_x(len,image_angle),y+lengthdir_y(len,image_angle),FlailExplosion)
{
	direction = other.image_angle;
	image_angle = other.image_angle;
	speed = other.speed;
}