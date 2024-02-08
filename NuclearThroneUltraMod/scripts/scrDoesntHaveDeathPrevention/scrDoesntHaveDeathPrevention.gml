///scrDoesntHaveDeathPrevention();
// /@description
///@param
function scrDoesntHaveDeathPrevention(){
	with Player
	{
		var sk = 0;
		repeat(maxskill+1)
		{
			if ( skill_got[sk] && 
			(sk == 18 || sk == 25 || sk == 40)
			)
			{
				return false;
			}
			sk ++;
		}
	}
	return true;
}