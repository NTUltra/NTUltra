function scrSaveStats() {

	var dir = 0;
	repeat(racemax+1){
		ini_write_real("STATS","ctotkill"+string(dir),ctot_kill[dir]);

		ini_write_real("STATS","ctottime"+string(dir),ctot_time[dir]);

		ini_write_real("STATS","ctotdead"+string(dir),ctot_dead[dir]);
	
		ini_write_real("STATS","ctotplayed"+string(dir),ctot_played[dir]);

		ini_write_real("STATS","ctotloop"+string(dir),ctot_loop[dir]);
		
		ini_write_real("STATS","charvoidentered"+string(dir),char_void_entered[dir]);

		ini_write_real("STATS","cbstkill"+string(dir),cbst_kill[dir]);

		ini_write_real("STATS","cbsttime"+string(dir),cbst_time[dir]);
		ini_write_real("STATS","cbsttimecasual"+string(dir),cbst_time_casual[dir]);
		ini_write_real("STATS","cbsttimehard"+string(dir),cbst_time_hard[dir]);


		ini_write_real("STATS","cbstdiff"+string(dir),cbst_diff[dir]);

		ini_write_real("STATS","cbstloop"+string(dir),cbst_loop[dir]);
	
		var cir = 0;
		ctot_all_crowns_taken[dir] = 0;
		repeat(crownmax + secretcrownmax)
		{
			ini_write_real("STATS","ctotcrownstaken"+string(dir)+"-"+string(cir),ctot_crown_taken[dir,cir]);
			if (cir > 1)
			{
				ctot_all_crowns_taken[dir] += ctot_crown_taken[dir,cir];
			}
			cir ++;
		}
		/*
		cir = 0;
		repeat(maxwep + 1)
		{
			ini_write_real("STATS","wep_found"+string(dir)+"-"+string(cir),wep_found[dir,cir]);
			cir ++;
		}*/
		dir +=1;
	}
	
	ini_write_real("STATS","ctotwallsdestroyed",ctot_walls_destroyed);
	
	ini_write_real("STATS","boss_bot_normal",boss_bot_normal);
	ini_write_real("STATS","boss_bot_inverted",boss_bot_inverted);
	ini_write_real("STATS","boss_bot_cursed",boss_bot_cursed);
	ini_write_real("STATS","boss_bot_golden",boss_bot_golden);
	ini_write_real("STATS","boss_bot_ultra",boss_bot_ultra);
	ini_write_real("STATS","total_run_slots",total_run_slots);

	var al = array_length(tot_areas);
	for(var i = 0; i < al; i++)
	{
		ini_write_real("STATS","totarea"+string(i),tot_areas[i]);
	}
	dir = 0;
	repeat(maxskill+2)
	{
		ini_write_real("STATS","ctotskilltaken" + string(dir),ctot_skill_taken[dir]);
		dir ++;
	}
	dir = 0;
	repeat(maxultra+2)
	{
		ini_write_real("STATS","ctotultrataken" + string(dir),ctot_ultra_taken[dir]);
		dir ++;
	}
	dir = 0;
	repeat(maxsecretultra + 1)
	{
		ini_write_real("STATS","ctotsecretultrataken" + string(dir),ctot_secret_ultra_taken[dir]);
		dir ++;
	}
	foundRoutes = array_unique(foundRoutes);
	var al = array_length(foundRoutes);
	for (var i = 0; i < al; i++) {
		ini_write_string("STATS","foundRoutes" + string(i),foundRoutes[i]);
	}
	ini_write_real("STATS","totalRoutesFound",string(al));
	ini_write_real("STATS","tottime",string(tot_time));
	ini_write_real("STATS","ctotvoidentered",string(ctot_void_entered));
}
