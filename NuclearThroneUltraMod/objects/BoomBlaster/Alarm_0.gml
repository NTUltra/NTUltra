/// @description Splash damage

// Inherit the parent event
event_inherited();

snd_play(sndExplosionL)
with instance_create(x,y,Explosion)
{
	scrCopyWeaponMod(other)	
}
var ang = direction;
repeat(6)
{
	with instance_create(x + lengthdir_x(24,ang),y + lengthdir_y(24,ang),SmallExplosion)
	{
		scrCopyWeaponMod(other)
	}
	ang += 60;
}
