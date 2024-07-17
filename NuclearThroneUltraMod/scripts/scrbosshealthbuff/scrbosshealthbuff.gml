///scrBossHealthBuff();
// /@description
///@param
function scrBossHealthBuff(){
	var ls = GetPlayerLoops();
	var baseHealth = maxhealth;
	maxhealth += max(ls * 30,0);
	maxhealth *= 1 + max(0,(ls - 1)*0.23);
	if scrIsHardMode()//HARD MODE
	{
		maxhealth *= 1.5;
		my_health = maxhealth;
		totemBuffed = true;
	}
	if UberCont.voidChallengeGoing[2]//Just add base health once again
		maxhealth += baseHealth;
	my_health = maxhealth;
}