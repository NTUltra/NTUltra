///scrHasEnoughMutations();
// /@description
///@param
function scrHasEnoughMutations(wantMuts = 2){
	var i = 0;
	with Player
	{
		var si = 0;
		repeat(maxskill)
		{
			if skill_got[si] && si != 27//NOT PATIENCE
			{
				i += 1;
			}
			si++;
		}
	}
	if i > wantMuts
		return true;
		
	return false;
}