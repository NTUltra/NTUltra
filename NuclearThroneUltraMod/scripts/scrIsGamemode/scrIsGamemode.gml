///scrIsGamemode();
// /@description
///@param
function scrIsGamemode(gmCheck){
	//return UberCont.opt_gamemode == gmCheck;
	return array_contains(UberCont.opt_gamemode, gmCheck);
}