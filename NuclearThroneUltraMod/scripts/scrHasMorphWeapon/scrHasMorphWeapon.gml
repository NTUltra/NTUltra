
///xxx();
// /@description
///@param
function scrHasMorphWeapon(){
	with Player {
		var ar = scrMorphWeaponsArray(999, false);
		return array_contains(ar,wep) || array_contains(ar,bwep) || array_contains(ar,cwep);
	}
	return false;
}