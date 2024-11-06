///xxx();
// /@description
///@param
function scrPlantApexPredatorKillSkillBuff(theSkillToCheck){
	with Player
	{
		return ultra_got[19] && !altUltra && 
			(theSkillToCheck == 6 ||
			theSkillToCheck == 7 ||
			theSkillToCheck == 24 ||
			theSkillToCheck == 28)
	}
}