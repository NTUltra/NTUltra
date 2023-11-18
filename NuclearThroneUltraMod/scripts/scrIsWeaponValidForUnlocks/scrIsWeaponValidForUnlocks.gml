///scrIsWeaponValidForUnlocks();
// /@description
///@param
function scrIsWeaponValidForUnlocks(weapon){
	if ((UberCont.wep_area[weapon] < 5 && UberCont.wep_area[weapon] >= 0)
	|| array_contains(UberCont.start_wep,weapon)
	|| array_contains(UberCont.race_swep,weapon)
	)
			return true;
	return false;		
	
}