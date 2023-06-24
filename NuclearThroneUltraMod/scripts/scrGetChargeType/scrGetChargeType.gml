///scrGetChargeType();
// /@description
///@param
function scrGetChargeType(){
	if (instance_exists(Player) && KeyCont.key_fire[Player.p] == 1)
		return 0;
	else
		return 1;
}