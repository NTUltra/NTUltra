/// @description p5
with instance_create(x,y+ step,SmallExplosion)
	scrCopyWeaponMod(other);
with instance_create(x,y - step*2,SmallExplosion)
	scrCopyWeaponMod(other);
snd_play(sndExplosionS);
instance_destroy();