function scrLightningWeapons(targetWep) {
	if (string_copy(wep_name[targetWep],0,8) == "LIGHTNING" || string_copy(wep_name[targetWep],0,6) == "ELECTRO" || targetWep=120 || 
	targetWep=144 || targetWep = 337 || targetWep=63 || targetWep == 545 || targetWep == 595
	|| targetWep = 347 || ( targetWep=352 && wep_type[targetWep]=5 ) || ( targetWep=323 && wep_type[targetWep]=5 ))
	return true
	else
	return false



}
