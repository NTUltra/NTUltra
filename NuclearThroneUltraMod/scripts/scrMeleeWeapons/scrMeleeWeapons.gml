function scrMeleeWeapons(wep) {
	var melees = [24,36,53,223,553
		,198,37,126,108,109,286,301,350
		,123,222,239,220,291,332,377,458 
		,495,577,588,591,592,593,596
		,625,481,669,492,603,604,177
		,674,67,253,254,255,256,479,480
		,81,605,719,752,809,812,821,825
		,822,272,275,484,714,887,756,898]
	if instance_exists(Player)
		with Player
		{
			if (wep != 0 && (wep_type[wep] == 0 || array_contains(melees, wep)))
			{
				return true;
			}
		}
	else
		with UberCont
		{
			if (wep != 0 && (wep_type[wep] == 0 || array_contains(melees, wep)))
			{
				return true;
			}
		}
	
	return false;
}
