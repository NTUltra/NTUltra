/// @description p4
with instance_create(x - step * 2,y + step * 2,SmallExplosion)
	scrCopyWeaponMod(other);
with instance_create(x + step * 2,y + step * 2,SmallExplosion)
	scrCopyWeaponMod(other);
