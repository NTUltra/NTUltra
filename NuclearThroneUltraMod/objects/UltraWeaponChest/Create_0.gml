scrWeapons()
SetSeedWeapon();
weps[0] = scrDecideUltraWep()
do {
	weps[1] = scrDecideUltraWep()
}
until (weps[1] != weps[0]);
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