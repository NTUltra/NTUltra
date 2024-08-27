///scrCopyOtherWeapon();
// /@description
///@param
function scrCopyOtherWeapon(othr, weapon){
	team = 2;
	wep = weapon;
	name = othr.wep_name[wep]
	ammo = othr.ammo;
	type = othr.wep_type[wep]
	curse = othr.curse
	wepmod1 = othr.wepmod1;
	wepmod2 = othr.wepmod2;
	wepmod3 = othr.wepmod3;
	wepmod4 = othr.wepmod4;
	isPermanent = othr.isPermanent;
	visitedPortals = othr.visitedPortals;
	hasBeenEaten = othr.hasBeenEaten;
	sprite_index = othr.wep_sprt[wep];
	wep_area = othr.wep_area;
	wep_type = othr.wep_type;
	wep_name = othr.wep_name;
	wep_sprt = othr.wep_sprt;
	maxwep = othr.maxwep;
}