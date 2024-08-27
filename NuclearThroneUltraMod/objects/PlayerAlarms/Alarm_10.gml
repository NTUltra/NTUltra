/// @description MeltingD
with Player
{
	if ultra_got[16] {
		var al = array_length(meltingd);
		for (var i = 0; i < al; i++)
		{
			if meltingd[i] != noone && instance_exists(meltingd[i])
			{
				with meltingd[i]
				{
					my_health = 0;
				}
			}
		}
		
	}	
}
alarm[10] = 5;