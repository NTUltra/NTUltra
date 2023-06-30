/// @description p1
snd_play(sndExplosion);
with instance_create(x-step,y-(step*2),SmallExplosion)
	scrCopyWeaponMod(other);
with instance_create(x,y-step,SmallExplosion)
	scrCopyWeaponMod(other);
with instance_create(x+step,y-(step*2),SmallExplosion)
	scrCopyWeaponMod(other);