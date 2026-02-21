///GetPlayerMaxRad();
// /@description Gets maximum rads player can have need to run in player for access to variables
function GetPlayerMaxRad(){
	var l = level - 1;
	var multiplier = 50 + (l*3.5);//62
	if (scrIsGamemode(22))//Slow leveling
	{
		multiplier *= 2;
	}
	else if scrIsHardMode()//HARD MODE
	{
		multiplier *= 1.3;
	}
	if level > 10
	{
		multiplier *= 1.25;	
	}
	if altUltra && ultra_got[33] {
		multiplier *= max(1,1 + (phoenixrevives*0.6));
		return (10*multiplier)// + (600*ultra_got[83]);
	}
	if (level < boostLevel)
	{
		multiplier *= 0.5;//0.45;
		return level*multiplier;
	}
	return (level * multiplier)// + (600*ultra_got[83]);
}