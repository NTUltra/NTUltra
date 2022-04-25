/// @description Explode into more bullets
var am = 6;
var angstep = 360/am;
var ang = direction;
repeat(am)
{
	with instance_create(x,y,Bullet1)
	{motion_add(ang,16)
	image_angle = direction
	team = other.team}
	ang += angstep;
}
	snd_play(sndExplosionS);
	BackCont.shake += 5
	
// Inherit the parent event
event_inherited();

