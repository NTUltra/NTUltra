function scrEndBoss() {
	//
	if instance_exists(Player)
	{
	with UberCont
	{
		if scrIsGamemode(26) //DAILY RACE
		{
			var al = array_length(encrypted_data.ctot_dailies_race_seed) - 1;//Minus one to overwrite the original score we set
	        encrypted_data.ctot_dailies_race_seed[al] = seed;
	        encrypted_data.ctot_dailies_race_time[al] = round(time_frame);
	        encrypted_data.dailies_race_day[al] = today;
			txttime = string(time_hours)+":"+minutesstring+":"+secondsstring+":"+string(floor(microseconds));
			with instance_create(x,y,UnlockPopup)
		    {
				mytext="RACE FINISHED! "+other.race_name[Player.race]+"#"+other.txttime
		    }
			scrSaveEncrypted();
			runRace[0] = round(time_frame);
			runRace[1] = encrypted_data.username;
			//Route string
			runRace[2] = routeString;
			//runRace[2] = Player.area;
			//runRace[3] = Player.subarea;
			//runRace[4] = Player.loops;
			runRace[3] = Player.race;
			runRace[4] = Player.bskin;
			if getUltraMutation() != 255 || array_length(runScore) <= 10
				runRace[5] = Player.altUltra;
			runRace[6] = Player.wep;
			runRace[7] = Player.bwep;
			runRace[8] = Player.cwep;
			runRace[9] = Player.crown;
			if getUltraMutation() != 255 || array_length(runScore) <= 10
			{
				runRace[10] = getUltraMutation();
				runRace[11] = scrGetAllMutations();
			}
			useSeed = false;
			opt_gamemode = [0];
			leaderboardType = LEADERBOARD.RACE;
			goToLeaderboard = true;
			canRestart = true;
			instance_create(x,y,SendRace);
		}
		if scrIsOnlyNormalGamemode()
		{

			//in seconds
			var besttime = time_seconds+(time_minutes*60)+(time_hours*3600);
			var bestofall = true
			var dir= 1;

			repeat(racemax)
			{
				if besttime > cbst_time[dir]
					bestofall=false;
				dir++;
			}

			txttime = string(time_hours)+":"+minutesstring+":"+secondsstring+":"+microseconds;

		    if bestofall
		    {
    
			    cbst_time[Player.race] = besttime;
    
			    with instance_create(x,y,UnlockPopup)
			    {
					mytext="BEST TIME YET!!! "+other.race_name[Player.race]+"#"+other.txttime
			    }
    
			    scrSave();
		    }
		    else if besttime < cbst_time[Player.race]
		    {
    
			    cbst_time[Player.race]= besttime;
    
			    with instance_create(x,y,UnlockPopup)
			    {
			    mytext="BEST TIME FOR "+other.race_name[Player.race]+"#"+other.txttime
			    }
    
			    scrSave();
		    }
    
		}

	}
	}



}
