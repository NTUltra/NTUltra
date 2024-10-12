snd_play(sndExplosionL)
with instance_create(x,y,Explosion)
{
	scrCopyWeaponMod(other)	
}
var ang = direction;
repeat(3)
{
	with instance_create(x + lengthdir_x(24,ang),y + lengthdir_y(24,ang),Explosion)
	{
		scrCopyWeaponMod(other)
	}
	ang += 120;
}
