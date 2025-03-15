///scrHasAlmostEmptyAmmo();
// /@description
///@param
function scrHasAlmostEmptyAmmo(){
	with Player
	{
		var takePercentage = 0.15
		var startingIndex = 1;
		if scrIsCrown(40)
		{
			startingIndex = 0;
		}
		var al = array_length(ammo);
		for (var i = startingIndex; i < al; i++) {
			if (ammo[i] < typ_amax[i]*takePercentage)
			{
				return true;
			}
		}
	}
	return false;
}