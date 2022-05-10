///GetPlayerMaxRad();
// /@description Gets maximum rads player can have need to run in player for access to variables
function GetPlayerMaxRad(){
	var multiplier = 50;
	if (UberCont.opt_gamemode == 22)//Slow leveling
	{
		multiplier *= 1.75;
	}
	if (level < boostLevel)
	{
		multiplier *= 0.3;//0.45;
		return level*multiplier;
	}
	return (level*multiplier)+(300*ultra_got[77])+(600*ultra_got[83]);
}