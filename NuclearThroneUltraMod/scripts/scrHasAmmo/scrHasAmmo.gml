///scrHasAmmo();
// /@description
///@param
function scrHasAmmo(){
	var al = 6;//weapon types total
	for (var i = 1; i < al; i++) {
		if ammo[i] > 0
			return true;
	}
	return false;
}