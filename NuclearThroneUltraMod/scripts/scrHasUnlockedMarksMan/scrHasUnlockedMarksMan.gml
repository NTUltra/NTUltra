///xxx();
// /@description
///@param
function scrHasUnlockedMarksMan(){
	var difCount = 0;
	if boss_bot_normal > 0
		difCount ++;
	if boss_bot_inverted > 0
		difCount ++;
	if boss_bot_cursed > 0
		difCount ++;
	if boss_bot_golden > 0
		difCount ++;
	if boss_bot_ultra > 0
		difCount ++;
	if difCount > 1
	{
		scrUnlockGameMode(48,"FOR KILLING TWO DIFFERENT TYPES OF BOSS BOTS!");
	}
}