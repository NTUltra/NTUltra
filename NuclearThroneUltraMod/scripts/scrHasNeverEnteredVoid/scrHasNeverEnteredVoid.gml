///xxx();
// /@description
///@param
function scrHasNeverEnteredVoid(){
	with UberCont
	{
		var i = 1;
		var tots = 0;
		repeat(racemax)
		{
			if (char_void_entered[i] && !scrUniqueVoidRace(i))
			{
				tots += 1;
			}
			i += 1;
		}
	}
	return tots;
}