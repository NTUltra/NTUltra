/// @description Spawn tiny spiraling mini plasma balls
alarm[1] = sdelay;
with instance_create(x,y,MiniSplasmaBall)
{
	ptime = 6;
	direction = other.direction;
	speed = 1
	scrCopyWeaponMod(other);
}
with instance_create(x,y,MiniSplasmaBall)
{
	ptime = 6;
	direction = other.direction+180;
	speed = 1
	scrCopyWeaponMod(other);
}
snd_play(sndPlasmaMinigun,0.2,true);