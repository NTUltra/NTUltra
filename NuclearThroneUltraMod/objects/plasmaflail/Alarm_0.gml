/// @description BOOM
var len = 74;
snd_play(sndPlasmaHit,0.1,true)
with instance_create(x+lengthdir_x(len,image_angle),y+lengthdir_y(len,image_angle),PlasmaImpact)
{
	direction = other.image_angle;
	image_angle = other.image_angle;
	speed = other.speed*0.8;
	friction = 0.1;
}