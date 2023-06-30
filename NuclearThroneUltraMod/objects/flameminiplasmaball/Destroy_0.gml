/// @description Fire

// Inherit the parent event
event_inherited();
BackCont.shake += 1;
snd_play(sndFlareExplode,0.1,true)
var ang = direction + 180;
var am = 4;
var angstep = 360/am;
repeat(am)
{
	with instance_create(x,y,Flame)
	{
		motion_add(ang,3.5)
		team = other.team
		ang += angstep;
		scrCopyWeaponMod(other);
	}
}