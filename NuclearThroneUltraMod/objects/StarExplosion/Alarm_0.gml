/// @description p1
snd_play(sndExplosion);

with instance_create(x - step,y-step,SmallExplosion)
	scrCopyWeaponMod(other);
with instance_create(x + step,y-step,SmallExplosion)
	scrCopyWeaponMod(other);