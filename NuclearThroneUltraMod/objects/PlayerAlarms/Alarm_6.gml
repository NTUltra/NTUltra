/// @description Humphry skill drain
if !instance_exists(GenCont) && !instance_exists(LevCont)
with Player
{
	if !outOfCombat
	{
		humphrySkill *= other.humphryAmount;
		if humphrySkill > 1000
			humphrySkill *= 0.9;
		if humphrySkill > 2000
			humphrySkill *= 0.7;
		humphrySkill = max(0, humphrySkill - other.humphryConstantAmount);
	}
}
alarm[6] = humphryDelay;