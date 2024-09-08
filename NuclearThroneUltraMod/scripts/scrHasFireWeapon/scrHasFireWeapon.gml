///scrHasFireWeapon();
// /@description
///@param
function scrHasFireWeapon(){
	with Player {
		return array_contains(scrListOfFireWeapons(),wep) || array_contains(scrListOfFireWeapons(),bwep) || array_contains(scrListOfFireWeapons(),cwep)
	}
	return false;
}