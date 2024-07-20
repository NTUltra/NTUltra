/// @description Ammo drain
if !instance_exists(GenCont) && !instance_exists(LevCont)
with Player
{
	if !outOfCombat && !lockout
	{
		var al = 6;//weapon types total
		for (var i = 1; i < al; i++) {
			if ammo[i] > typ_amax[i]
			{
				if i == 1
					ammo[i] -= 4;
				else
					ammo[i] -= 1;
			}
		}
	}
}
alarm[3] = 10;