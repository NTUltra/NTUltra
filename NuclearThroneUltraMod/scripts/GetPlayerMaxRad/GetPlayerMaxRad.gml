///GetPlayerMaxRad();
// /@description Gets maximum rads player can have need to run in player for access to variables
function GetPlayerMaxRad(){
	var multiplier = 62;
	if (scrIsGamemode(22))//Slow leveling
	{
		multiplier *= 1.8;
	}
	else if scrIsHardMode()//HARD MODE
	{
		multiplier *= 1.25;
	}
	if altUltra && ultra_got[33] {
		multiplier *= max(1,1 + (phoenixrevives*0.5));
		return (10*multiplier) + (600*ultra_got[83]);
	}
	if (level < boostLevel)
	{
		multiplier *= 0.2;//0.45;
		return level*multiplier;
	}
	return (level*multiplier) + (600*ultra_got[83]);
}