/// @description p3
with instance_create(x - step,y,SmallExplosion)
	scrCopyWeaponMod(other);
with instance_create(x + step ,y,SmallExplosion)
	scrCopyWeaponMod(other);
