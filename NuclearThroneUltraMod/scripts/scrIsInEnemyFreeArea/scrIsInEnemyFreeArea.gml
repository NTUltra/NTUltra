///scrIsInEnemyFreeArea();
// /@description
///@param
function scrIsInEnemyFreeArea(){
	with Player
	{
		return area == 100 || area == 137 || area == 104
	}
	return false;
}