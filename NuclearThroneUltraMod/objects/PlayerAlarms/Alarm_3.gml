/// @description Ammo drain
if !instance_exists(GenCont) && !instance_exists(LevCont)
with Player
{
	if !outOfCombat && !lockout
	{
		var al = 6;//weapon types total
		for (var i = 0; i < al; i++) {
			if ammo[i] > typ_amax[i]
			{
				if i == 0
				{
					ammo[i] -= 1.5;
					scrSpendingAmmo(i,1.5);
				}
				else if i == 1
				{
					ammo[i] -= 4;
					scrSpendingAmmo(i,4);
				}
				else
				{
					ammo[i] -= 1;
					scrSpendingAmmo(i,1);
				}
			}
		}
	}
}
alarm[3] = 11;