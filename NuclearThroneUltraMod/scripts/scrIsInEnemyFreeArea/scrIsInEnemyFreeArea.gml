///scrIsInEnemyFreeArea();
// /@description
///@param
function scrIsInEnemyFreeArea(){
	with Player
	{
		return area == 100 || area == 137 || area == 104 || ((area == 9 || area == 118) && subarea == 3)
	}
	return false;
}