function scrLoadStats() {
	var dir = 0;
	var cir = 0;
	repeat(maxwep + 1)
	{
		any_wep_found[cir] = ini_read_real("STATS","any_wep_found"+string(cir),0);
		cir ++;
	}
	any_wep_found[0] = true;
	any_wep_found[1] = true;
	boss_bot_normal = ini_read_real("STATS","boss_bot_normal",0);
	boss_bot_inverted = ini_read_real("STATS","boss_bot_inverted",0);
	boss_bot_cursed = ini_read_real("STATS","boss_bot_cursed",0);
	boss_bot_golden = ini_read_real("STATS","boss_bot_golden",0);
	boss_bot_ultra = ini_read_real("STATS","boss_bot_ultra",0);
	total_run_slots = ini_read_real("STATS","total_run_slots",0);
	max_run_slots = 15;
	
	ctot_all_crowns_taken = array_create(racemax,0);
	repeat(racemax+1){
		//Stats per character yes we love stats #thronebutt.com
		ctot_kill[dir] = ini_read_real("STATS","ctotkill"+string(dir),0);

		ctot_time[dir] = ini_read_real("STATS","ctottime"+string(dir),0);

		ctot_dead[dir] = ini_read_real("STATS","ctotdead"+string(dir),0);
	
		ctot_played[dir] = ini_read_real("STATS","ctotplayed"+string(dir),0);

		ctot_loop[dir] = ini_read_real("STATS","ctotloop"+string(dir),0);
		
		char_void_entered[dir] = ini_read_real("STATS","charvoidentered"+string(dir),0);

		cbst_kill[dir] = ini_read_real("STATS","cbstkill"+string(dir),0);

		cbst_time[dir] = ini_read_real("STATS","cbsttime"+string(dir),999999999);
		cbst_time_casual[dir] = ini_read_real("STATS","cbsttimecasual"+string(dir),999999999);
		cbst_time_hard[dir] = ini_read_real("STATS","cbsttimehard"+string(dir),999999999);

		cbst_diff[dir] = ini_read_real("STATS","cbstdiff"+string(dir),0);

		cbst_loop[dir] = ini_read_real("STATS","cbstloop"+string(dir),0);
		
		cir = 0;
		ctot_all_crowns_taken[dir] = 0;
		repeat(crownmax + secretcrownmax)
		{
			ctot_crown_taken[dir,cir] = ini_read_real("STATS","ctotcrownstaken"+string(dir)+"-"+string(cir),0);
			if (cir > 1)
			{
				ctot_all_crowns_taken[dir] += ctot_crown_taken[dir,cir];
			}
			cir ++;
		}
		cir = 0;
		repeat(maxwep + 1)
		{
			wep_found[dir,cir] = ini_read_real("STATS","wep_found"+string(dir)+"-"+string(cir),0);
			cir ++;
		}
		wep_found[dir,0] = true;
		wep_found[dir,1] = true;
		wep_found[dir,race_swep[dir]] = true;
		any_wep_found[race_swep[dir]] = true;
		dir +=1;
	}

	ctot_walls_destroyed = ini_read_real("STATS","ctotwallsdestroyed",0);
	tot_areas = [];
	var i = 0;
	while(ini_key_exists("STATS","totarea"+string(i))) {
		tot_areas[i] = ini_read_real("STATS","totarea"+string(i),1);
		i++;
	}
	
	dir = 0;
	repeat(maxskill+2)
	{
		ctot_skill_taken[dir] = ini_read_real("STATS","ctotskilltaken" + string(dir),0);
		dir ++;
	}
	dir = 0;
	repeat(maxultra+2)
	{
		ctot_ultra_taken[dir] = ini_read_real("STATS","ctotultrataken" + string(dir),0);
		dir ++;
	}
	dir = 0;
	repeat(maxsecretultra + 1)
	{
		ctot_secret_ultra_taken[dir] = ini_read_real("STATS","ctotsecretultrataken" + string(dir),0);
		dir++;
	}
	foundRoutes = [];
	var al = ini_read_real("STATS","totalRoutesFound" ,0);
	for (var i = 0; i < al; i++) {
		foundRoutes[i] = ini_read_string("STATS","foundRoutes" + string(i),"1>2");
	}
	foundRoutes = array_unique(foundRoutes);
	tot_time = real(string_digits(ini_read_real("STATS","tottime",0)));
	ctot_void_entered = ini_read_real("STATS","ctotvoidentered",0);
}
