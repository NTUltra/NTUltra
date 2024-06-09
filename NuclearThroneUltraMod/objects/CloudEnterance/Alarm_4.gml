/// @description Check for muts
if instance_exists(SpiralCont) || instance_exists(LevCont)
{
	alarm[4] = 10;
}
else
{
	var i = 0;
	with Player
	{
		var gottenSkills = [];
		var si = 0;
		repeat(maxskill)
		{
			if skill_got[si]
			{
				i += 1;
			}
			si++;
		}
	}
	if i > 2
	{
		hasEnoughMuts = true;
		alarm[1] = 30;
	}
	else
	{
		alarm[4] = 90;
	}
}