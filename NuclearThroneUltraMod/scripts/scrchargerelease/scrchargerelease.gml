///scrChargeRelease();
// /@description
///@param
function scrChargeRelease(){
	return (KeyCont.key_fire[Player.p] != 1 && 
	KeyCont.key_fire[Player.p] != 2 && Player.keyfire != 1) && 
	((Player.race != 6 && Player.race != 7 && Player.race != 19 && !Player.ultra_got[32]) 
	|| KeyCont.key_spec[Player.p] != 1 
	&& KeyCont.key_spec[Player.p] != 2) 
	|| (KeyCont.key_swap[Player.p] = 1)
}