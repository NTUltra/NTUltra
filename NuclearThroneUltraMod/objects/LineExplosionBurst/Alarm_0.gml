ammo -= 1

alarm[0] = time

//FIRING
snd_play(sndExplosionS,0.1,true)

with instance_create(x + lengthdir_x(distance,direction),y + lengthdir_y(distance,direction),SmallExplosion)
{
	scrCopyWeaponMod(other)
	direction = other.direction;
}
with instance_create(x + lengthdir_x(distance,direction + 180),y + lengthdir_y(distance,direction + 180),SmallExplosion)
{
	scrCopyWeaponMod(other)
	direction = other.direction + 180;
}
distance += step;

if ammo <= 0
	instance_destroy()
else
	alarm[0] = time;	
