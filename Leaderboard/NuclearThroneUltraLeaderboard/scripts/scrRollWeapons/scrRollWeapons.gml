///scrRollWeapons();
// /@description
///@param
function scrRollWeapons(){
	var wep = irandom_range(1,maxwep);
	while (wep == 69 || wep == 298 || wep == 1)
	{
		wep = irandom_range(1,maxwep);
	}
	return wep;
}