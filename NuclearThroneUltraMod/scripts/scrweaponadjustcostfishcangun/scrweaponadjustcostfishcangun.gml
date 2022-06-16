///scrWeaponAdjustCostFishCanGun();
// /@description
///@param
function scrWeaponAdjustCostFishCanGun(){
	var costReduction = 0.85;
	for (var i = 0; i < maxwep; i++) {
		if wep_type[i] != 0
		{
			wep_cost[i] = wep_cost[i]*costReduction;
			wep_rad[i] = wep_rad[i]*costReduction;
		}
	}
}