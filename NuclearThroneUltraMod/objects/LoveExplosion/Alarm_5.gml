/// @description p6
snd_play(sndExplosion);
with instance_create(x-step,y+(step*2),SmallExplosion)
	scrCopyWeaponMod(other);
with instance_create(x+step,y+(step*2),SmallExplosion)
	scrCopyWeaponMod(other);
with instance_create(x,y+(step*3),SmallExplosion)
	scrCopyWeaponMod(other);
instance_destroy();