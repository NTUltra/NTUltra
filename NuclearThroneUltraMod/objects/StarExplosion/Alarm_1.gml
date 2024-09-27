/// @description p2
with instance_create(x - step * 2,y-step,SmallExplosion)
	scrCopyWeaponMod(other);
with instance_create(x + step * 2,y-step,SmallExplosion)
	scrCopyWeaponMod(other);
