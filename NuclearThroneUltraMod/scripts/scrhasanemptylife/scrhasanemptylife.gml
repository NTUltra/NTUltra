///scrHasAnEmptyLife();
// /@description
///@param
function scrHasAnEmptyLife(){
	with Player
	{
		var i = 0;
		repeat(array_length(livesRegain))
		{
			if livesRegain[i] != 3
				return true;
			i++;
		}
	}
	return false;
}