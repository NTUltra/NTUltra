/// @description Refresh weaponry
//BOLT SPECIFIC
scrWeapons();
for (var wi = 0; wi < maxwep; wi++) {
	if wep_type[wi] != 3 && !scrIsAlsoBoltType(wi)
	{
		wep_area[wi] = -1;
	}
}
scrWeaponSpecificChest();