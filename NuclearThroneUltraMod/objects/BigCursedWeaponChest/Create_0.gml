event_inherited()
mySize = 2;
team = 0;
curse = 0
instance_create(x,y,WallBreak);
scrWeapons()
SetSeedWeapon();
wep1=scrDecideWep(1,14,true);
var tries = 1000;
do {
	wep2 = scrDecideWep(0,20,true);
	tries --;
} until (wep2 != wep1 || tries < 1)
tries = 1000;
do {
	wep3 = scrDecideWep(1,18,true);
	tries --;
} until ((wep3 != wep1 && wep3 != wep2) || tries < 1)
SetSeed();
sprite_index = sprCursedChestBig