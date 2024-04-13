///scrBossHealthBuff();
// /@description
///@param
function scrBossHealthBuff(){
	var ls = GetPlayerLoops();
	maxhealth *= 1 + clamp((ls - 1)*0.2,0,1);
	if scrIsHardMode()//HARD MODE
	{
		maxhealth *= 1.5;
		my_health = maxhealth;
		totemBuffed = true;
	}
}