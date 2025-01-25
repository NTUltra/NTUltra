///scrHasAmmo();
// /@description
///@param
function scrHasAmmo(){
	var al = 6;//weapon types total
	var startI = 1;
	if scrIsCrown(40)
		startI = 0;
	for (var i = startI; i < al; i++) {
		if ammo[i] > 0
			return true;
	}
	return false;
}