
BackCont.shake += 5;
Sleep(10)
snd_play(sndFlareExplode,0.1,true)
var ang = direction + 180;
var am = 24;
var angstep = 360/am;
repeat(am)
{
	with instance_create(x,y,IceFlame)
	{
		motion_add(ang,random(2)+8)
		scrCopyWeaponMod(other);
		team = other.team
		ang += angstep;
	}
}