scrWeapons()
SetSeedWeapon();
wep = scrDecideWepGold()
aditionalwep = 0;
mySize = 1;
team = 0;
while (wep == 315)
{
	aditionalwep = 315;
	wep = scrDecideWepGold()
}
SetSeed();
//If you don't have the pig yet give em a money gun yo fukc da grind!
if aditionalwep != 315 && instance_exists(Player) && Player.area == 103
{
	if UberCont.race_have[20] == 0
	{
		aditionalwep = 315;
	}
}
event_inherited()
curse = 0

if isOneWeaponOnlyModes()
{
	instance_destroy(id,false);
	instance_create(x,y,AmmoChest);
}