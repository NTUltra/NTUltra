/// @description (re)-Init
alarm[0] = checkDelay;
if instance_exists(Player)
{
	if Player.ultra_got[96]
		alarm[11] = 30;
	if Player.ultra_got[16]
		alarm[10] = 10;
	if Player.skill_got[22] == 1 //STRESS
		alarm[2] = stressLowCheck;
	if Player.ultra_got[26] //GET LOADED
		alarm[3] = 60;
	if Player.race == 26//HUMPHRY
	{
		humphryDelay = 8;
		humphryAmount = 0.95;
		humphryConstantAmount = 1;
		if Player.loops > 0
			humphryDelay --;
		if Player.skill_got[5]
		{
			humphryAmount = 0.96;
			humphryConstantAmount = 0;
			humphryDelay += 2;
		}
		alarm[6] = 60;
	}
	if Player.crown == 25
	{
		alarm[9] = 30;
		alarm[4] = 30;
	}
	if instance_exists(ThroneIISpiral)//Crown of freedom
	{
		alarm[4] = 30;
	}
	else if Player.crown == 26
	{
		alarm[5] = 120;	
	}
}
