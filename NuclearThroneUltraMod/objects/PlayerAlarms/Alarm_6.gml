/// @description Humphry skill drain
if !instance_exists(GenCont) && !instance_exists(LevCont) && !instance_exists(StunLockout)
	with Player
	{
		if !outOfCombat
		{
			humphrySkill *= other.humphryAmount;
			if humphrySkill > 250
				humphrySkill *= 0.95;
			if humphrySkill > 350
				humphrySkill *= 0.9;
			if humphrySkill > 500
				humphrySkill *= 0.85;
			if humphrySkill > 1000
				humphrySkill *= 0.7;
			humphrySkill = max(0, humphrySkill - other.humphryConstantAmount);
		}
	}
alarm[6] = humphryDelay;