function scrLoadData() {
	//races starting weps & unlocked
	var dir; dir = 1
	repeat(racemax){
	selected_start_wep[dir] = ini_read_real("DATA","selected_start_wep"+string(dir),0);
	race_have[dir] = ini_read_real("DATA","race_have"+string(dir),race_have[dir]);
	race_bskin[dir] = ini_read_real("DATA","bskin"+string(dir),race_bskin[dir]);
	race_cskin[dir] = ini_read_real("DATA","cskin"+string(dir),race_cskin[dir]);
	race_dskin[dir] = ini_read_real("DATA","dskin"+string(dir),race_dskin[dir]);
	race_eskin[dir] = ini_read_real("DATA","eskin"+string(dir),race_eskin[dir]);
	race_fskin[dir] = ini_read_real("DATA","fskin"+string(dir),race_fskin[dir]);
	race_gskin[dir] = ini_read_real("DATA","gskin"+string(dir),race_gskin[dir]);
	skin[dir] = ini_read_real("DATA","skin"+string(dir),0);
	crown_start[dir] = ini_read_real("DATA","crown_start"+string(dir),false);

	dir += 1;}
	race_gskin[9] = 0;//Backwards compatability bug chicken G skin
	dir=0
	repeat(crownmax + secretcrownmax)
	{
	crown_used[dir] = ini_read_real("DATA","crown_used"+string(dir),0);
	dir++;
	}

	dir=1;
	repeat (maxgamemode)
	{
	gamemode_have[dir] = ini_read_real("DATA","gamemode_have"+string(dir),gamemode_have[dir]);
	dir++;
	}

	protowep = ini_read_real("DATA","protowep",56);
	protowepmod1 = ini_read_real("DATA","protowepmod1",0);
	protowepmod2 = ini_read_real("DATA","protowepmod2",0);
	protowepmod3 = ini_read_real("DATA","protowepmod3",0);
	protowepmod4 = ini_read_real("DATA","protowepmod4",0);
	protowep2 = ini_read_real("DATA","protowep2",56);
	protowepmod12 = ini_read_real("DATA","protowepmod12",0);
	protowepmod22 = ini_read_real("DATA","protowepmod22",0);
	protowepmod32 = ini_read_real("DATA","protowepmod32",0);
	protowepmod42 = ini_read_real("DATA","protowepmod42",0);

	seedModeSeed = ini_read_real("DATA","savedseed",-1);
	seedModeSeedText = ini_read_string("DATA","savedseedtext","");
	if scrIsGamemode(38)
	{
		useSeed = true;
		seed = seedModeSeed;
		gunGameSeed = seed;
		seedText = seedModeSeedText;
	}
	var racedir=1;

	repeat(racemax)
	{
		var gottaCatchYamal = true;
		dir = 0;
		repeat(maxstartwep+1)
		{
			start_wep_have[dir,racedir] = ini_read_real("DATA","start_wep_have"+string(dir)+"-"+string(racedir),start_wep_have[dir,racedir]);
			if start_wep_have[dir,racedir] == 0
				gottaCatchYamal = false;
			dir++;
		}
		start_wep_have_all[racedir] = gottaCatchYamal;
		racedir++;
	}



}
