/// @description Trail of explosions
snd_play(sndExplosion);
var len = random_range(8,32);
var dir = direction + 180 + random_range(60,-60);
snd_play(sndExplosionS);
with instance_create(
x + lengthdir_x(len,dir),
y + lengthdir_y(len,dir),
SmallExplosion)
{
	motion_add(other.direction+choose(90,-90,180),0.1);
	scrCopyWeaponMod(other);
}

if boomTime > 2
	boomTime -= 1;
else
	boomTime = 2;