function scrToxicWeapons(wep, targetWepName) {
	return string_copy(targetWepName,0,5) == "TOXIC" || wep == 317 || wep == 318 || wep == 417 || wep == 435 || wep == 574;
	/*
	if argument0 =31||argument0=129||argument0=130||argument0=146||argument0=317||argument0=318||argument0=319||argument0=326
	return true
	else 
	return false
*/
}
