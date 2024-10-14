/// @description Explode
snd_play(sndMeatExplo,0.1,true);
snd_play(sndClusterOpen,0.1,true);
snd_play(choose(sndWater1,sndWater2),0.1,true);
BackCont.shake += 6;
with instance_create(x + hspeed,y + vspeed,MeatExplosion)
{
	dmg = max(1,dmg-1);
	direction = other.direction;
	scrCopyWeaponMod(other);
}
var ang = direction;
repeat(6)
{
	with instance_create(x + hspeed + lengthdir_x(16,ang),y + vspeed + lengthdir_y(16,ang),SmallMeatExplosion)
	{
		dmg = max(1,dmg-1);
		direction = other.direction;
		scrCopyWeaponMod(other);
	}
	ang += 60;
}