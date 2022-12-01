///xxx();
// /@description
///@param
function scrHasMorphWeapon(){
	with Player {
		return wep == 70 || wep == 73 || wep == 98 || wep == 198
		|| wep == 407 || wep == 408 || wep == 468
		||
		bwep == 70 || bwep == 73 || bwep == 98 || bwep == 198
		|| bwep == 407 || bwep == 408 || bwep == 468
		||
		cwep == 70 || cwep == 73 || cwep == 98 || cwep == 198
		|| cwep == 407 || cwep == 408 || cwep == 468
	}
	return false;
}