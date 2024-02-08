///scrDoesntHaveReloadMutation();
// /@description
///@param
function scrDoesntHaveReloadMutation() {
	var reloadMut = 0;
	with Player
	{
		var sk = 0;
		repeat(maxskill+1)
		{
			if ( skill_got[sk] && 
			(sk == 22 || sk == 23 || sk == 24 || sk == 28 || sk == 34 || sk == 35 || sk == 41)
			)
			{
				reloadMut += 1;
			}
			sk ++;
		}
	}
	if reloadMut > 1
		return false;
	return true;
}