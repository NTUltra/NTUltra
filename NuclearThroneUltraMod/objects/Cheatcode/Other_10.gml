/// @description hunderd
hundredPercentI++;
alarm[0] = sequenceDelay;
if (hundredPercentI) >= array_length(hundredPercent)
{
	hundredPercentI = 0;
	if !show_question("CHEAT CODE\nREPLACE SAVE FILE!?\nUNLOCK EVERYTHING!?")
		exit;
	with UberCont
	{
		var dir=0;
		about_to_unlock_alt_routes = 1
		unlocked_alt_routes = true;
		unlocked_inverted_areas = true;
		mutation_crystals_collected_1 = 1;
		mutation_crystals_collected_2 = 1;
		mutation_crystals_collected_3 = 1;
		//unlocked_alt_routes = ini_read_real("STATS","unlocked_alt_routes",0);
		//unlocked_inverted_areas = ini_read_real("STATS","unlocked_inverted_areas",0);
		unlocked_more_crowns = 1
		//unlocked_more_characters = ini_read_real("STATS","unlocked_more_characters",0);
		repeat(racemax+1)
		{
			race_have[dir]=1
			race_bskin[dir]=1
			race_cskin[dir]=1
			secondary_start_wep[dir] = 1;
			got_regal[dir] = 1;
			//Crownstart unlock
			//ctot_all_crowns_taken[dir,1] = 1;
			ctot_crown_taken[dir,0] = 1;
			dir++
		}

		var dir=0;

		repeat(maxgamemode+1)
		{
			gamemode_have[dir]=1
			dir++
		}

		var racedir=1;
	
		repeat(racemax+1)
		{
			var dir = 1;
			repeat(maxstartwep)
			{
				start_wep_have[dir,racedir]=1
				dir++;
			}
		racedir++;
		}
		var su = 0;
		repeat(maxsecretultra)
		{
			ctot_secret_ultra_found[su] = 1;
			su += 1;
		}
		var ui = 0;
		repeat(maxultra)
		{
			ctot_ultra_found[ui] = 1;
			ui += 1;
		}
		scrSave();
	}
	room_restart();
}