function scrLoadStats() {
	var dir; dir=0;
	repeat(racemax+1){
	//Stats per character yes we love stats #thronebutt.com
	ctot_kill[dir] = ini_read_real("STATS","ctotkill"+string(dir),0);

	ctot_time[dir] = ini_read_real("STATS","ctottime"+string(dir),0);

	ctot_dead[dir] = ini_read_real("STATS","ctotdead"+string(dir),0);
	
	ctot_played[dir] = ini_read_real("STATS","ctotplayed"+string(dir),0);

	ctot_loop[dir] = ini_read_real("STATS","ctotloop"+string(dir),0);

	cbst_kill[dir] = ini_read_real("STATS","cbstkill"+string(dir),0);

	cbst_time[dir] = ini_read_real("STATS","cbsttime"+string(dir),999999999);

	cbst_diff[dir] = ini_read_real("STATS","cbstdiff"+string(dir),0);

	cbst_loop[dir] = ini_read_real("STATS","cbstloop"+string(dir),0);
	var cir = 0;
	ctot_all_crowns_taken[dir] = 0;
	repeat(crownmax+2)
	{
		ctot_crown_taken[dir,cir] = ini_read_real("STATS","ctotcrownstaken"+string(dir)+"-"+string(cir),0);
		if (cir > 1)
		{
			ctot_all_crowns_taken[dir] += ctot_crown_taken[dir,cir];
		}
		cir ++;
	}
	dir +=1;}

	ctot_walls_destroyed = ini_read_real("STATS","ctotwallsdestroyed",0);
	
	dir = 0;
	repeat(maxskill+2)
	{
		ctot_skill_taken[dir] = ini_read_real("STATS","ctotskilltaken" + string(dir),0);
		dir ++;
	}
	dir = 0;
	repeat(maxultra+1)
	{
		ctot_ultra_taken[dir] = ini_read_real("STATS","ctotultrataken" + string(dir),0);
		dir ++;
	}


	tot_time = real(string_digits(ini_read_real("STATS","tottime",0)));
	debug("tot time: ",tot_time);
}
