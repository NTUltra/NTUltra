/// @description Euphoria
if instance_exists(Player)
{
	destAcc = 0.012;
	if scrIsCrown(23)//Crown of speed
	{
		destAcc += 0.002;
	}
	if Player.skill_got[12] = 1
	{
		destAcc -= 0.002;
	}
	if scrIsCrown(24)//Crown of sloth
	{
		destAcc -= 0.001;
	}
}