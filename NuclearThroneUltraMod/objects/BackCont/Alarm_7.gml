/// @description Survival arena stall popo untill wave start
if instance_exists(SurvivalArenaStarter)
{
	alarm[7] = 1;
	if alarm[1] > 0
		alarm[1] ++;
	if alarm[2] > 0
		alarm[2] ++;
	if alarm[3] > 0
		alarm[3] ++;
}