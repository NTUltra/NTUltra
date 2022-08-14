function scrEndBoss() {
	//
	if instance_exists(Player)
	{
	with UberCont
	{
		if opt_gamemode == 26 //DAILY RACE
		{
			debug("RACE WIN");
			var al = array_length(encrypted_data.ctot_dailies_race_seed) - 1;//Minus one to overwrite the original score we set
	        encrypted_data.ctot_dailies_race_seed[al] = seed;
			var raceTime = time_seconds+(time_minutes*60)+(time_hours*3600);
	        encrypted_data.ctot_dailies_race_time[al] = raceTime;
	        encrypted_data.dailies_race_day[al] = today;
			txttime = string(time_hours)+":"+minutesstring+":"+secondsstring+":"+microseconds;
			with instance_create(x,y,UnlockPopup)
		    {
				mytext="RACE FINISHED! "+other.race_name[Player.race]+"#"+other.txttime
		    }
			scrSaveEncrypted();
		}
		if opt_gamemode == 0//isValidGamemodeToUnlock(opt_gamemode) && opt_gamemode != 6
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
