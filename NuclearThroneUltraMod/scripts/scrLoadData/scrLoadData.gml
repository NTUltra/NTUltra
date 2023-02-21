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
	skin[dir] = ini_read_real("DATA","skin"+string(dir),0);
	crown_start[dir] = ini_read_real("DATA","crown_start"+string(dir),false);

	dir += 1;}

	dir=0
	repeat(crownmax+10)
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

	oneweponly298 = ini_read_real("DATA","oneweponly298",0);
	oneweponly311 =ini_read_real("DATA","oneweponly311",0);
	oneweponly315 = ini_read_real("DATA","oneweponly315",0);
	oneweponly329 = ini_read_real("DATA","oneweponly329",0);
	oneweponly177 = ini_read_real("DATA","oneweponly177",0);
	oneweponly192 = ini_read_real("DATA","oneweponly192",0);
	oneweponly69 = ini_read_real("DATA","oneweponly69",0);
	oneweponly75 = ini_read_real("DATA","oneweponly75",0);
	oneweponly264 = ini_read_real("DATA","oneweponly264",0);
	oneweponly328 = ini_read_real("DATA","oneweponly328",0);
	oneweponly231 = ini_read_real("DATA","oneweponly231",0);
	oneweponly263 = ini_read_real("DATA","oneweponly263",0);
	oneweponly214 = ini_read_real("DATA","oneweponly214",0);
	oneweponly316 = ini_read_real("DATA","oneweponly316",0);
	seedModeSeed = ini_read_real("DATA","savedseed",-1);
	seedModeSeedText = ini_read_string("DATA","savedseedtext","");
	if opt_gamemode == 39
	{
		useSeed = true;
		seed = seedModeSeed;
		seedText = seedModeSeedText;
	}
	var racedir=1;

	repeat(racemax)
	{
	dir=0;
	var gottaCatchYamal = true;
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
