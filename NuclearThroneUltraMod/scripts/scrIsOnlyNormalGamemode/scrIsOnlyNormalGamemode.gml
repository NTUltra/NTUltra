///scrIsOnlyNormalGamemode();
// /@description
///@param
function scrIsOnlyNormalGamemode(){
	return array_length(UberCont.opt_gamemode) == 1 && UberCont.opt_gamemode[0] == 0
}