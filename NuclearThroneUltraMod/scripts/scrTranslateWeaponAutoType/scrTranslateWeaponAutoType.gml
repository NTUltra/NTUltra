///xxx();
// /@description
///@param
function scrTranslateWeaponAutoType(wepAuto){
	switch (wepAuto)
	{
		case 1:
			return "\n[AUTO]";
		case 2:
			return "\n[BURST]";
		case 3:
			return "\n[AUTO BURST]";
		default:
			return "";
	}
}