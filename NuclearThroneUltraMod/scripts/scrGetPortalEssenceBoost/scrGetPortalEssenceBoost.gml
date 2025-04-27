///scrGetPortalEssenceBoost();
// /@description
///@param
function scrGetPortalEssenceBoost() {
	var boost = 1;
	with UberCont
	{
		if voidChallengeGoing[0]
		{
			boost += 1;
		}
		if instance_exists(Player) && Player.ultra_got[113] && Player.altUltra
		{
			boost += 0.5;
		}
	}
	return boost;
}