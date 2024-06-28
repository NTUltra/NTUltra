///scrBossHealthBuff();
// /@description
///@param
function scrBossHealthBuff(){
	var ls = GetPlayerLoops();
	var baseHealth = maxhealth;
	maxhealth += min(10,ls) * 20;
	maxhealth *= 1 + clamp((ls - 1)*0.2,0,1);
	if scrIsHardMode()//HARD MODE
	{
		maxhealth *= 1.5;
		my_health = maxhealth;
		totemBuffed = true;
	}
	if UberCont.voidChallengeGoing[2]//Just add base health once again
		maxhealth += baseHealth;
}