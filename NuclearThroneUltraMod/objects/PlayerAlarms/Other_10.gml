/// @description (re)-Init
alarm[0] = checkDelay;
if instance_exists(Player)
{
	if Player.skill_got[22] == 1 //STRESS
		alarm[2] = stressLowCheck;
}
