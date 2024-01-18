///xxx();
// /@description
///@param
function scrCanHunterSniperEye(){
	var gotBlind = scrIsCrown(19);
	return (instance_exists(Player) && 
		(
			(Player.skill_got[19] && Player.skill_got[17]) ||
			(Player.skill_got[19] && gotBlind) ||
			(Player.skill_got[17] && gotBlind) ||
			(Player.skill_got[23] && Player.skill_got[17]) ||
			(Player.skill_got[23] && Player.skill_got[19]) ||
			(Player.skill_got[23] && gotBlind)
		)
	)
}