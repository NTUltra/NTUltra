/// @description Boom
snd_play(sndExplosionL)
with instance_create(x,y,GreenExplosion)
	scrCopyWeaponMod(other);
	
var am = 20;
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