///scrSortOutUltraWeapons();
// /@description
///@param
function scrSortOutUltraWeapons(){
	var allUltra = [];
	var allMeleeUltra = [];
	var lowerUltra = [];
	var lowerMeleeUltra = [];
	for (var i = 0; i < maxwep+1; i++) {
		if string_copy(wep_name[i],0,5) = "ULTRA"
		{
			if wep_area[i] < 31
			{
				allUltra[array_length(allUltra)] = i;
				lowerUltra[array_length(lowerUltra)] = i;
				if scrMeleeWeapons(i)
				{
					allMeleeUltra[array_length(allMeleeUltra)] = i;
					lowerMeleeUltra[array_length(lowerMeleeUltra)] = i;
				}
			}
			else
			{
				allUltra[array_length(allUltra)] = i;
				if scrMeleeWeapons(i)
				{
					allMeleeUltra[array_length(allMeleeUltra)] = i;
				}
			}
		}
	}
	debug("allUltra ", allUltra);
	debug("lowerUltra ", lowerUltra);
	debug("allMeleeUltra ", allMeleeUltra);
	debug("lowerMeleeUltra ", lowerMeleeUltra);
}