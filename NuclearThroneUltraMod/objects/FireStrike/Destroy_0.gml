snd_play_2d(sndFlareExplode,0.2)
var ang = direction;
repeat(8)
{
	with instance_create(x,y,HeavyFlame)
	{
		motion_add(ang,4);
		scrCopyWeaponMod(other);
		team = other.team
	}
	ang += 45;
}

