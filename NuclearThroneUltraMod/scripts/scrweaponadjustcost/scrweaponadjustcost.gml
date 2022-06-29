///scrWeaponAdjustCost();
// /@description
///@param
function scrWeaponAdjustCost(costReduction){
	for (var i = 0; i < maxwep; i++) {
		if wep_type[i] != 0
		{
			wep_cost[i] = wep_cost[i]*costReduction;
			wep_rad[i] = wep_rad[i]*costReduction;
		}
	}
}