snd_play_2d(sndFlareExplode,0.2)
snd_play(sndDragonStop);
var ang = direction + 180;
var am = 20;
var angstep = 360/am;
repeat(am)
{
	with instance_create(x,y,UltraFlame)
	{
		motion_add(ang,random(2)+6)
		scrCopyWeaponMod(other);
		team = other.team
		ang += angstep;
	}
}



