///scrBossHealthBuff();
// /@description
///@param
function scrBossHealthBuff(){
	var ls = GetPlayerLoops();
	maxhealth *= 1+ clamp(ls*0.1,0,0.5);
	if scrIsHardMode()//HARD MODE
	{
		maxhealth *= 1.5;
		my_health = maxhealth;
		totemBuffed = true;
	}
}