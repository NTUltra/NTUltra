/// @description (re)-Init
alarm[0] = checkDelay;
if instance_exists(Player)
{
	if Player.skill_got[22] == 1 //STRESS
		alarm[2] = stressLowCheck;
	if Player.ultra_got[26] //GET LOADED
		alarm[3] = 60;
	if Player.crown == 25 || instance_exists(ThroneIISpiral)//Crown of freedom
	{
		alarm[4] = 30;
	}
	else if Player.crown == 26
	{
		alarm[5] = 120;	
	}
}
