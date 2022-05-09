///scrCanBecomeGold();
// /@description
///@param
function scrCanBecomeGold(){
	if instance_exists(Player)
	{
		if random(30) < 1 + min(26,Player.loops * 3)
		{
			return true;
		}
	}
	return false;
}