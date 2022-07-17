/// @description xxx
with Player
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
alarm[3] = 9;