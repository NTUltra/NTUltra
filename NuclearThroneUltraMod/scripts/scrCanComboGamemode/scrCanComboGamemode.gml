///scrCanComboGamemode();
// /@description
///@param
function scrCanComboGamemode(gmCheck){
	var al = array_length(UberCont.opt_gamemode);
	for (var i = 0; i < al; i++) {
		if array_contains(UberCont.gamemode_nocombo[UberCont.opt_gamemode[i]], gmCheck)
			return false;
	}
	return true;
}