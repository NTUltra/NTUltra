function scrLightningWeapons(targetWep) {
	if array_contains(scrLightningWeaponsArray(1, false),targetWep)
		return true;
	else
		return false
	/*
	if (string_copy(wep_name[targetWep],0,8) == "LIGHTNING" || string_copy(wep_name[targetWep],0,6) == "ELECTRO" || targetWep=120 || 
	targetWep=144 || targetWep = 337 || targetWep=63 || targetWep == 545 || targetWep == 595 || targetWep == 631
	|| targetWep = 347 || targetWep=352 || targetWep=323 || targetWep == 396)
	return true*/
}
