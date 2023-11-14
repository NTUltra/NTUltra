///isValidGamemodeToUnlock();
// /@description returns true if a gamemode is valid for unlocking stuff
function isValidGamemodeToUnlock(exception = 0){
	var al = array_length(UberCont.opt_gamemode)
	for (var i = 0; i < al; i++)
	{
		var gm = UberCont.opt_gamemode[i];
		if !(gm == 0 || gm == 12 || gm == 3 || gm == 4 || gm == 7 || gm == 19 || gm == 16
		|| gm == 15 || gm == 6 || gm == 20 || gm == 22 || gm == 26 || gm == 27 || gm == 9 || gm == 24 || gm == 25
		|| gm == 32 || gm == 33 || gm == 34 || gm == 40 || gm == 39 || gm == 40 || gm == 41 || gm == 44 || gm == 45 || gm == exception)
		{
			if (gm == 1 || gm == 46 )
			{
				if UberCont.wep_area[UberCont.opt_gm1wep] >= 5 || UberCont.wep_area[UberCont.opt_gm1wep] < 0
				{
					return false
				}
			}
			else 
			{
				return false;
			}
		}
	}
	return true;
}