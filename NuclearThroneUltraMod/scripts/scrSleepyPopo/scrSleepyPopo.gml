///scrSleepyPopo();
// /@description
///@param
function scrSleepyPopo(){
	if instance_exists(Player)
	{
		if Player.skill_got[29]//insomnia
		{
			alarm[1] += 47;
			scrGiveSnooze(0);
		}
		else
		{
			alarm[1] *= 0.5;	
		}
	}
	else
	{
		alarm[1] *= 0.5;	
	}
}