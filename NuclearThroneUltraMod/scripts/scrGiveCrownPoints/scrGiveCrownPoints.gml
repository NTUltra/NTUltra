///scrGiveCrownPoints();
// /@description
///@param
function scrGiveCrownPoints(points = 1) {
	debug("Give crown"); 
	with Player
	{
		crownpoints += 1
		currentCrowns = [];
		var al = array_length(crown);
		for (var i = 0; i < al; i++) {
			currentCrowns[i] = crown[i];
		}
	}
}