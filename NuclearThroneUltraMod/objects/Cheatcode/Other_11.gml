/// @description Unlock retail characters
unlockRetailCharactersI++;
alarm[1] = sequenceDelay;
if (unlockRetailCharactersI >= array_length(unlockRetailCharacters))
{
	unlockRetailCharactersI = 0;
	if !show_question("CHEAT CODE\nREPLACE SAVE FILE!?\nUNLOCK RETAIL CHARACTERS AND STARTING WEAPONS?")
		exit;
	with UberCont
	{
		var dir=0;
		repeat(racemax+1)
		{
			if (dir == 1 ||
			dir == 2 ||
			dir == 3 ||
			dir == 4 ||
			dir == 5 ||
			dir == 6 ||
			dir == 7 ||
			dir == 8 ||
			dir == 9 ||
			dir == 10 ||
			dir == 19 ||
			dir == 21 ||
			dir == 22 ||
			dir == 23)
			{
				race_have[dir]=1
				race_bskin[dir]=1
				race_cskin[dir]=1
				//Crownstart unlock
				var cir = 0;
				ctot_all_crowns_taken[dir] = 0;
				repeat(crownmax + secretcrownmax)
				{
					ctot_crown_taken[dir,cir] = 1;
					if (cir > 1)
					{
						ctot_all_crowns_taken[dir] += ctot_crown_taken[dir,cir];
					}
					cir ++;
				}
				var wepdir = 1;
				repeat(maxstartwep)
				{
					if (wepdir == 0 ||
					wepdir == 2 ||
					wepdir == 3 ||
					wepdir == 4 ||
					wepdir == 5 ||
					wepdir == 6 ||
					wepdir == 7 ||
					wepdir == 9 ||
					wepdir == 10 ||
					wepdir == 11 ||
					wepdir == 12 ||
					wepdir == 13 ||
					wepdir == 14)
						start_wep_have[wepdir,dir]=1;
					wepdir++;
				}
			}
			dir++
		}
		debug("CHEAT RETAIL")
		debug(race_have);
		scrSave();
	}
	room_restart();
}