///scrCanWeDisco();
// /@description
///@param
function scrCanWeDisco(){
	with Player
	{
		if //Morph weapon mod
		wepmod1 == 16 || wepmod2 == 16 || wepmod3 == 16 || wepmod4 == 16 ||
		bwepmod1 == 16 || bwepmod2 == 16 || bwepmod3 == 16 || bwepmod4 == 16 ||
		cwepmod1 == 16 || cwepmod2 == 16 || cwepmod3 == 16 || cwepmod4 == 16 ||
		//Any morph weapon or disco gun
		wep == 70 || wep == 73 || wep == 98 || wep == 198
		|| wep == 407 || wep == 408 || wep == 468 || wep == 396 ||
		
		bwep == 70 || bwep == 73 || bwep == 98 || bwep == 198
		|| bwep == 407 || bwep == 408 || bwep == 468 || bwep == 396 ||
		
		cwep == 70 || cwep == 73 || cwep == 98 || cwep == 198
		|| cwep == 407 || cwep == 408 || cwep == 468 ||  cwep == 396
			return true;
	}
	return false;
}