/// @description Explode into more bullets
var am = 6;
var angstep = 360/am;
var ang = direction;
repeat(am)
{
	with instance_create(x,y,IDPDBullet)
	{
		motion_add(ang,8)
		image_angle = direction
		team = other.team
		if team == 2
			spr_index = sprIDPDBulletRogue;
	}
	ang += angstep;
}
	snd_play(sndExplosionS);
	BackCont.shake += 3;
	