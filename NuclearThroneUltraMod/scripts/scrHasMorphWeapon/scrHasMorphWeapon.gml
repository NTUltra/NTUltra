
///xxx();
// /@description
///@param
function scrHasMorphWeapon(){
	with Player {
		return wep == 70 || wep == 73 || wep == 98 || wep == 198
		|| wep == 407 || wep == 408 || wep == 468 || wep == 659
		|| wep == 495 || wep == 646 || wep == 663 || wep == 750 || wep == 755 ||
		bwep == 70 || bwep == 73 || bwep == 98 || bwep == 198
		|| bwep == 407 || bwep == 408 || bwep == 468 || bwep == 659
		|| bwep == 495 || bwep == 646 || bwep == 663 || bwep == 750 || bwep == 755 ||
		cwep == 70 || cwep == 73 || cwep == 98 || cwep == 198
		|| cwep == 407 || cwep == 408 || cwep == 468 || cwep == 659
		|| cwep == 495 || cwep == 646 || cwep == 663 || cwep == 750 || cwep == 755
	}
	return false;
}