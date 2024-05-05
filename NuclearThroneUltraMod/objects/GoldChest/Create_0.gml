scrWeapons()
SetSeedWeapon();
ammoGet = 50;
wep[0] = scrDecideWepGold();
aditionalwep = 0;
mySize = 1;
team = 0;
heavyHeart = false;
while (wep[0] == 315)
{
	aditionalwep = 315;
	wep[0] = scrDecideWepGold()
}
if instance_exists(Player) && Player.skill_got[0]
{
	ammoGet = 30;
	heavyHeart = true;
	var tries = 500;
	do {
		wep[1] = scrDecideWepGold();
		tries -= 1;
	} until(wep[1] != wep[0] || tries < 0)
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