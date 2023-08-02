

Sleep(50)
snd_play(sndFlareExplode)

var ang = direction + 180;
var am = 18;
var angstep = 360/am;
repeat(am)
{
	with instance_create(x,y,IceFlame)
	{
		motion_add(ang,random(2)+4)
		scrCopyWeaponMod(other);
		team = other.team
		ang += angstep;
	}
}
