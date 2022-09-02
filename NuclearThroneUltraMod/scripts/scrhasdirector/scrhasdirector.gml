///xxx();
// /@description
///@param
function scrHasDirector(){
	with Player
	{
		if (wep == 89 || wep == 170 || wep == 171 || wep == 172 || wep == 173 || wep == 174 || wep == 175 || wep == 176 || wep == 182 || wep == 183 || wep == 237 || wep == 293 || wep == 367 || wep == 409 || wep == 433 || wep == 454 || wep == 606 || wep == 607)
			return true
		if (bwep == 89 || bwep == 170 || bwep == 171 || bwep == 172 || bwep == 173 || bwep == 174 || bwep == 175 || bwep == 176 || bwep == 182 || bwep == 183 || bwep == 237 || bwep == 293 || bwep == 367 || bwep == 409 || bwep == 433 || bwep == 454 || bwep == 606 || bwep == 607)
			return true;
	}
	return false;
}