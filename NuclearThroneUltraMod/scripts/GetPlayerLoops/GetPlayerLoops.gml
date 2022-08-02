///xxx();
// /@description
///@param
function GetPlayerLoops(){
	if instance_exists(Player)
		return Player.loops
	
	return UberCont.loops;
}