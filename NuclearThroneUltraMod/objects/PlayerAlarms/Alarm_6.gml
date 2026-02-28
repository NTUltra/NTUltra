/// @description Humphry skill drain
if !instance_exists(GenCont) && !instance_exists(LevCont) && !instance_exists(StunLockout) && instance_exists(enemy)
{
	with Player
	{
		var n = instance_nearest(x,y,enemy)
		if n != noone && instance_exists(n) && point_distance(x,y,n.x,n.y) < 400
		{
			if !outOfCombat && humphrySkill > 10
			{
				humphrySkill *= other.humphryAmount;
				if humphrySkill > 250
					humphrySkill *= 0.95;
				if humphrySkill > 350
					humphrySkill *= 0.9;
				if humphrySkill > 500
					humphrySkill *= 0.85;
				if humphrySkill > 1000
					humphrySkill *= 0.8;
				if humphrySkill > 1500
					humphrySkill *= 0.7;
				humphrySkill = max(10, humphrySkill - other.humphryConstantAmount);
			}
		}
	}
}
alarm[6] = humphryDelay;