/// @description delay before seeking apply speedmods
var modBoost = 0.3;
if instance_exists(Player) 
{
	if Player.skill_got[30] == 1
		modBoost += 0.2;
	if scrIsCrown(23)//Crown of speed
		mxSpd += 0.4;
	if scrIsCrown(24)//Crown of sloth
		mxSpd -= 0.4;
}
if Mod1 == 11
	mxSpd += modBoost;
if Mod2 == 11
	mxSpd += modBoost;
if Mod3 == 11
	mxSpd += modBoost;
if Mod4 == 11
	mxSpd += modBoost;