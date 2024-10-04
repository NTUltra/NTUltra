///scrRollGunGame();
// /@description
///@param
function scrRollGunGame(){
	with UberCont {
		if useSeed
		{
			random_set_seed(gunGameSeed);
			gunGameSeed += 4;
		}
	}
	if wep != 0 && UberCont.nextGunGameWep != 0
	{
		wep = UberCont.nextGunGameWep;
		scrAddNewWeaponDrop(wep, true);
		if ammo[wep_type[wep]] >= 0 && ammo[wep_type[wep]] < typ_ammo[wep_type[wep]]*2
		{
			ammo[wep_type[wep]] += typ_ammo[wep_type[wep]]*2;
		}
		wep_rad[wep] = 0;
	}
	if bwep != 0 && UberCont.nextGunGameWepB != 0
	{
		bwep = UberCont.nextGunGameWepB;
		scrAddNewWeaponDrop(bwep, true);
		if ammo[wep_type[bwep]] >= 0 && ammo[wep_type[bwep]] < typ_ammo[wep_type[bwep]]*2
		{
			ammo[wep_type[bwep]] += typ_ammo[wep_type[bwep]]*2;
		}
		wep_rad[bwep] = 0;
	}
	scrWeaponHold();
	if loops > 0
		gunGameKill = 20;
	else
		gunGameKill = 10;
			
	do	{
		UberCont.nextGunGameWepB=irandom(maxwep);
	}until(UberCont.nextGunGameWepB != 0 && wep_area[UberCont.nextGunGameWepB] > -2)
	do	{
		UberCont.nextGunGameWep=irandom(maxwep);
	}until(UberCont.nextGunGameWep != 0 && wep_area[UberCont.nextGunGameWep] > -2)
	SetSeed();
}