/// @description Some unlock
with Player
{
	//Unlock Angel
	var survivalSkills = 0;
	if skill_got[1] == 1//Rhino skin
		survivalSkills++;
	if skill_got[7] == 1//Bloodlust
		survivalSkills++;
	if skill_got[9] == 1//Second stumache
		survivalSkills++;
	if skill_got[12] == 1//Euphoria
		survivalSkills++;
	if skill_got[18] == 1//Last wish
		survivalSkills++;
	if skill_got[25] == 1//Strong spirit
		survivalSkills++;
	if skill_got[26] == 1//Hammer head
		survivalSkills++;
	if skill_got[31] == 1//Tough shell
		survivalSkills++;
	if skill_got[32] == 1//Alkaline Saliva
		survivalSkills++;
	if skill_got[36] == 1//Absorbing pores
		survivalSkills++;
	
	if survivalSkills > 2
	scrUnlockCharacter(18,"FOR TAKING#THREE SURVIVAL MUTATIONS")	
}