/// @description
var ang  = direction;
snd_play(sndSuperDiscGun);
repeat(6)
{
	with instance_create(x,y,Disc)
	{
		motion_add(ang,9);
		image_angle = direction
		team = other.team
	}
	ang += 60;
}