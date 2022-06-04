/// @description hunderd
hundredPercentI++;
alarm[0] = sequenceDelay;
if (hundredPercentI) >= array_length(hundredPercent)
{
	with UberCont
	{
	var dir=0;

	repeat(racemax)//+1
	{
		race_have[dir]=1
		
		race_bskin[dir]=1
		//race_cskin[dir]=1
		//Crownstart unlock
		var cir = 0;
		ctot_all_crowns_taken[dir] = 0;
		repeat(crownmax+1)
		{
			ctot_crown_taken[dir,cir] = 1;
			if (cir > 1)
			{
				ctot_all_crowns_taken[dir] += ctot_crown_taken[dir,cir];
			}
			cir ++;
		}
		dir++
	}

	var dir=0;

	repeat(maxgamemode+1)
	{
		gamemode_have[dir]=1
		dir++
	}

	var racedir=1;
	
	repeat(racemax)
	{
		var dir = 1;
		repeat(maxstartwep)
		{
			//start_wep_have[27,dir]=0
			start_wep_have[dir,racedir]=1

			dir++;
		}
	racedir++;
	}
	scrSave();
	}
	room_restart();
}