/// @description p4
with instance_create(x+(step*3),y-step,SmallExplosion)
	scrCopyWeaponMod(other);
with instance_create(x+(step*3),y,SmallExplosion)
	scrCopyWeaponMod(other);