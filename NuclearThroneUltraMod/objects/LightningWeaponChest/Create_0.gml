scrWeapons()
SetSeedWeapon();
event_inherited()
curse = 0
heavyHeart = false;
wep[0] = scrDecideLightningWep();
if heavyHeart
{
	do {
		wep[1] = scrDecideLightningWep();
	} until (wep[0] != wep[1]);
}