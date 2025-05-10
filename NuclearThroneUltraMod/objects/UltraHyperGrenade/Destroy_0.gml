snd_play(sndExplosionXL)
with instance_create(x,y,GreenExplosion)
{
	scrCopyWeaponMod(other)	
}
var ang = direction;
repeat(6)
{
	with instance_create(x + lengthdir_x(24,ang),y + lengthdir_y(24,ang),GreenExplosion)
	{
		scrCopyWeaponMod(other)
	}
	ang += 60;
}
ang -= 15;
repeat(12)
{
	with instance_create(x + lengthdir_x(48,ang),y + lengthdir_y(48,ang),GreenExplosion)
	{
		scrCopyWeaponMod(other)
	}
	ang += 30;
}
