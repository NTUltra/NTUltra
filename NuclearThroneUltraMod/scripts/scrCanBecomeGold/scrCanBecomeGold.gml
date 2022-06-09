///scrCanBecomeGold();
// /@description
///@param
function scrCanBecomeGold(){
	if instance_exists(Player)
	{
		if random(30) < 1 + min(24,Player.loops * 2.5)
		{
			return true;
		}
	}
	return false;
}