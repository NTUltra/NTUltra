/// @description Boom
snd_play(sndClusterOpen,0.05,true);
var ang = random(360);
var angstep = 360/6;
var i = 0;
repeat(6)
{
	with instance_create(x,y,ClusterGrenade)
	{
		alarm[0] = 2+i
		motion_add(ang,10)//speed=10
		image_angle = direction
		team = other.team
		scrCopyWeaponMod(other);
	}
	ang += angstep;
	i++;
}