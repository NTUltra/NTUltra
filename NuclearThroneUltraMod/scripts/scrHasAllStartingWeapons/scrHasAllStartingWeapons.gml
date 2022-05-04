///scrHasAllStartingWeapons();
// /@description
///@param character index
function scrHasAllStartingWeapons(charI){
	var gotthisone = 0;
	with UberCont
	{
		var wepdir = 0;
		repeat(maxstartwep)
		{
			if start_wep_have[wepdir,charI]=1
				gotthisone++;
			wepdir++;
		}
		if gotthisone >= maxstartwep
			return true;
	}
	return false;
}