///scrHasAmmoGenMutation();
// /@description
///@param
function scrHasAmmoGenMutation(){
	with Player
	{
		var sk = 0;
		var ammoGen = 0;
		repeat(maxskill+1)
		{
			if ( skill_got[sk] && 
			(sk == 4 || sk == 6 || sk == 3 || sk == 10 || sk == 16 || sk == 23 || sk == 38 || sk == 45)
			)
			{
				return true;
			}
			sk ++;
		}
	}
	return false;
}