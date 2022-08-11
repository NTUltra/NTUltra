///scrBossHealthBuff();
// /@description
///@param
function scrBossHealthBuff(){
	var ls = GetPlayerLoops();
	maxhealth *= 1+ clamp(ls*0.1,0,0.5);
	if UberCont.opt_gamemode == 34//HARD MODE
	{
		my_health += maxhealth*0.5;
		maxhealth *= 1.5;
		totemBuffed = true;
	}
}