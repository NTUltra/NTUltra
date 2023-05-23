/// @description Explode into more bullets
var am = 24;
var angstep = 360/am;
var ang = direction;
repeat(am)
{
	with instance_create(x,y,Bullet4)
	{motion_add(ang,16)
	image_angle = direction
	team = other.team}
	ang += angstep;
}
	snd_play(sndExplosionS);
	BackCont.shake += 8
	