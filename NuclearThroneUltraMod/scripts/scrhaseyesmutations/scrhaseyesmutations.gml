///scrHasEyesMutations();
// /@description
///@param
function scrHasEyesMutations(){
	with Player
	{
		var sk = 0;
		var eyes = 0;
		repeat(maxskill+1)
		{
			if ( skill_got[sk] && 
			(sk == 8 || sk == 9 || sk == 12 || sk == 13 || sk == 23 || sk == 19 || sk == 24 || sk == 28)
			)
			{
				eyes ++;
			}
			sk ++;
		}
		if eyes > 2
			return true;
	}
	return false;
}