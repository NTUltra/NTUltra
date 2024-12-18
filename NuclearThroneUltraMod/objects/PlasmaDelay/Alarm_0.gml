/// @description Shpawn

with instance_create(x,y,PlasmaImpact)
{
	dmg -= other.dmgReduc;
	dmg -= 0.5;
	scrCopyWeaponMod(other);
}