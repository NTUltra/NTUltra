event_inherited()
mySize = 2;
team = 0;
curse = 0
sprite_index = sprWeaponChestBig
instance_create(x,y,WallBreak);
scrWeapons()
SetSeedWeapon();
wep1=scrDecideWep(0,50);
var tries = 1000;
do {
	wep2 = scrDecideWep(0,30);
	tries --;
} until (wep2 != wep1 || tries < 1)
tries = 1000;
do {
	wep3 = scrDecideWep(1,20);
	tries --;
} until ((wep3 != wep1 && wep3 != wep2) || tries < 1)
heavyHeart = false;
wep4 = 0;
if instance_exists(Player) && Player.skill_got[0]
{
	heavyHeart = true;
	wep4 = scrDecideWep(0,30);
}
SetSeed();