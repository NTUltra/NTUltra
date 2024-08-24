function scrEndBoss() {
	//
	if instance_exists(Player)
	{
	with UberCont
	{
		if scrIsGamemode(26) && !UberCont.isLeaderboardGamemode//DAILY RACE
		{
			//var al = array_length(encrypted_data.ctot_dailies_race_seed) - 1;//Minus one to overwrite the original score we set
	        //encrypted_data.ctot_dailies_race_seed[al] = seed;
	        //encrypted_data.ctot_dailies_race_time[al] = round(time_frame);
	        //encrypted_data.dailies_race_day[al] = today;
			txttime = string(time_hours)+":"+minutesstring+":"+secondsstring+":"+string(floor(microseconds));
			with instance_create(x,y,UnlockPopup)
		    {
				mytext="RACE FINISHED! "+other.race_name[Player.race]+"#"+other.txttime
		    }
			//scrSaveEncrypted();
			runRace[0] = round(time_frame);
			runRace[1] = encrypted_data.userid;
			runRace[2] = encrypted_data.username;
			//Route string
			runRace[3] = routeString;
			//runRace[2] = Player.area;
			//runRace[3] = Player.subarea;
			//runRace[4] = Player.loops;
			runRace[4] = Player.race;
			runRace[5] = Player.bskin;
			if getUltraMutation() != 255 || array_length(runRace) <= 12
				runRace[6] = Player.altUltra;
			runRace[7] = Player.wep;
			runRace[8] = Player.bwep;
			runRace[9] = Player.cwep;
			runRace[10] = string_replace_all(string(Player.crown)," ","");
			runRace[11] = Player.ultramod;
			if getUltraMutation() != 255 || array_length(runRace) <= 12
			{
				runRace[12] = getUltraMutation();
				runRace[13] = scrGetAllMutations();
			}
			useSeed = false;
			//opt_gamemode = [0];
			leaderboardType = LEADERBOARD.RACE;
			goToLeaderboard = true;
			canRestart = true;
			instance_create(x,y,SendRace);
		}
		if array_length(UberCont.opt_gamemode) == 1 && scrIsGamemode(9)
		{
			//Normal mode best time
			//in seconds
			var besttime = time_seconds+(time_minutes*60)+(time_hours*3600);
			var bestofall = true
			var dir= 1;

			repeat(racemax)
			{
				if besttime > cbst_time_casual[dir]
					bestofall=false;
				dir++;
			}

			txttime = string(time_hours)+":"+minutesstring+":"+secondsstring+":"+microseconds;

		    if bestofall
		    {
    
			    cbst_time_casual[Player.race] = besttime;
    
			    with instance_create(x,y,UnlockPopup)
			    {
					mytext="BEST CASUAL MODE TIME ALL CHARACTERS!!!#"+other.race_name[Player.race]+"#"+other.txttime
			    }
    
			    scrSave();
		    }
		    else if besttime < cbst_time_casual[Player.race]
		    {
    
			    cbst_time_casual[Player.race]= besttime;
    
			    with instance_create(x,y,UnlockPopup)
			    {
			    mytext="BEST CASUAL MODE TIME FOR "+other.race_name[Player.race]+"#"+other.txttime
			    }
    
			    scrSave();
		    }
		}
		else if array_length(UberCont.opt_gamemode) == 1 && scrIsHardMode()
		{
			//Hard mode best time
			//in seconds
			var besttime = time_seconds+(time_minutes*60)+(time_hours*3600);
			var bestofall = true
			var dir= 1;

			repeat(racemax)
			{
				if besttime > cbst_time_hard[dir]
					bestofall=false;
				dir++;
			}

			txttime = string(time_hours)+":"+minutesstring+":"+secondsstring+":"+microseconds;

		    if bestofall
		    {
    
			    cbst_time_hard[Player.race] = besttime;
    
			    with instance_create(x,y,UnlockPopup)
			    {
					mytext="BEST HARD MODE TIME ALL CHARACTERS!!!#"+other.race_name[Player.race]+"#"+other.txttime
			    }
    
			    scrSave();
		    }
		    else if besttime < cbst_time_hard[Player.race]
		    {
    
			    cbst_time_hard[Player.race]= besttime;
    
			    with instance_create(x,y,UnlockPopup)
			    {
			    mytext="BEST HARD MODE TIME FOR "+other.race_name[Player.race]+"#"+other.txttime
			    }
    
			    scrSave();
		    }
		}
		else if scrIsOnlyNormalGamemode()
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
					mytext="BEST TIME ALL CHARACTERS!!!#"+other.race_name[Player.race]+"#"+other.txttime
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
