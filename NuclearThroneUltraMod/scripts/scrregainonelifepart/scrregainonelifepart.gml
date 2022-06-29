///scrRegainOneLifePart();
// /@description
///@param
function scrRegainOneLifePart(){
	with Player
	{
		var al = array_length(livesRegain);
		for (var i = 0; i < al; i++) {
		    if livesRegain[i] < 3
			{
				livesRegain[i] +=1;
				if livesRegain[i] == 3
					skeletonlives ++;
				return;
			}
		}
	}
}