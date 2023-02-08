///GetPlayerMaxRad();
// /@description Gets maximum rads player can have need to run in player for access to variables
function GetPlayerMaxRad(){
	var multiplier = 62;
	if (UberCont.opt_gamemode == 22 || UberCont.opt_gamemode == 39)//Slow leveling
	{
		multiplier *= 1.75;
	}
	else if scrIsHardMode()//HARD MODE
	{
		multiplier *= 1.25;
	}
	else if UberCont.opt_gamemode == 38//Infinite levels all mutations
	{
		multiplier *= 0.5;
	}
	if (level < boostLevel)
	{
		multiplier *= 0.2;//0.45;
		return level*multiplier;
	}
	return (level*multiplier) + (600*ultra_got[83]);
}