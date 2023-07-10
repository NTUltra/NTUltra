///scrIsCrown();
// /@description
///@param
function scrIsCrown(crownCheck){
	if instance_exists(Player)
		return array_contains(Player.crown, crownCheck);
	return false;
}