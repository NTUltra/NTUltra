///scrHasHealingMutations();
// /@description
///@param
function scrHasHealingMutations(amountOfMutsRequired){
	with Player
	{
		var sk = 0;
		var mutation = 0;
		repeat(maxskill+1)
		{
			if ( skill_got[sk] && 
			(sk == 7 || sk == 9 || sk == 32 || sk == 36 || sk == 45)
			)
			{
				mutation ++;
			}
			sk ++;
		}
		if mutation >= amountOfMutsRequired
			return true;
	}
	return false;
}