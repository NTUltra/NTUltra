/// @description Shpawn

with instance_create(x,y,PlasmaImpact)
{
	dmg -= other.dmgReduc;
	scrCopyWeaponMod(other);
}