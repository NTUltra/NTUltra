///scrWeaponAdjustCost();
// /@description
///@param
function scrWeaponAdjustCost(costReduction){
	for (var i = 0; i < maxwep; i++) {
		if wep_type[i] != 0
		{
			wep_cost_base[i] = wep_cost_base[i]*costReduction;
			wep_rad_base[i] = wep_rad_base[i]*costReduction;
		}
	}
}