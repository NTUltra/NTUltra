/// @description Boom
if !audio_is_playing(sndClusterOpen)
	snd_play(sndClusterOpen);
var ang = random(360);
var angstep = 360/8;
repeat(8)
{
	with instance_create(x,y,SmallGrenade)
	{
		alarm[0] = 10;
		motion_add(ang,2+random(3))//speed=10
		image_angle = direction
		team = other.team
		scrCopyWeaponMod(other);
	}
	ang += angstep;
}