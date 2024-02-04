event_inherited()
mySize = 2;
team = 0;
curse = 0
sprite_index = sprWeaponChestBig
instance_create(x,y,WallBreak);
scrWeapons()
SetSeedWeapon();
wep1=scrDecideWep(0);
var tries = 1000;
do {
	wep2 = scrDecideWep(0);
	tries --;
} until (wep2 != wep1 || tries < 1)
tries = 1000;
do {
	wep3 = scrDecideWep(1);
	tries --;
} until ((wep3 != wep1 && wep3 != wep2) || tries < 1)
SetSeed();