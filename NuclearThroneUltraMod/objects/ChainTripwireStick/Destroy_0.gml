/// @description Flare
BackCont.shake += 3;
snd_play(sndFlareExplode,0.1,true)
var ang = image_angle;
var am = 6;
var angstep = 360/am;
repeat(am)
{
	with instance_create(x,y,Flame)
	{
		motion_add(ang,random(2)+4)
		scrCopyWeaponMod(other);
		team = other.team
		ang += angstep;
	}
}



