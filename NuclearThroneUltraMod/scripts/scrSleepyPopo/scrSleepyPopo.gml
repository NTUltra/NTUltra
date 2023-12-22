///scrSleepyPopo();
// /@description
///@param
function scrSleepyPopo(){
	if instance_exists(Player)
	{
		if Player.skill_got[29]//insomnia
		{
			alarm[1] += 45;
			scrGiveSnooze(0);
		}
	}
}