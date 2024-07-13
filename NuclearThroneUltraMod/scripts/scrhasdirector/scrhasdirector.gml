///xxx();
// /@description
///@param
function scrHasDirector(){
	with Player
	{
		if (wep == 89 || wep == 170 || wep == 171 || wep == 172 || wep == 173 || wep == 174 || wep == 175 || wep == 176 || wep == 182 || wep == 183 || wep == 237 || wep == 293 || wep == 367 || wep == 409 || wep == 433 || wep == 454 || wep == 606 || wep == 607 || wep == 616 || wep == 647 || wep == 656
			|| wep == 654 || wep == 767 || wep == 794)
			return true
		else if (bwep == 89 || bwep == 170 || bwep == 171 || bwep == 172 || bwep == 173 || bwep == 174 || bwep == 175 || bwep == 176 || bwep == 182 || bwep == 183 || bwep == 237 || bwep == 293 || bwep == 367 || bwep == 409 || bwep == 433 || bwep == 454 || bwep == 606 || bwep == 607 || bwep == 616 || bwep == 647 || bwep == 656
			|| bwep == 654 || bwep == 767 || bwep == 794)
			return true;
		else if (cwep == 89 || cwep == 170 || cwep == 171 || cwep == 172 || cwep == 173 || cwep == 174 || cwep == 175 || cwep == 176 || cwep == 182 || cwep == 183 || cwep == 237 || cwep == 293 || cwep == 367 || cwep == 409 || cwep == 433 || cwep == 454 || cwep == 606 || cwep == 607 || cwep == 616 || cwep == 647 || cwep == 656
			|| cwep == 654 || cwep == 767 || cwep == 794)
			return true;
	}
	return false;
}