///scrHasASecretCrown();
// /@description
///@param
function scrHasASecretCrown() {
	for (var i = Player.crownmax; i < Player.crownmax + Player.secretcrownmax; i++)
	{
		if scrIsCrown(i)
			return true;
	}
	return false;
}