scrWeapons()
SetSeedWeapon();
wep = scrDecideUltraWep()
mySize = 1;
team = 0;
SetSeed();
event_inherited()
curse = 0

if isOneWeaponOnlyModes()
{
	instance_destroy(id,false);
	instance_create(x,y,WeaponChest);
}