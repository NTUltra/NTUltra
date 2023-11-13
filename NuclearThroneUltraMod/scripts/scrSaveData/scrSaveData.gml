function scrSaveData() {
	var dir; dir = 1;
	repeat(racemax){
		ini_write_real("DATA","selected_start_wep"+string(dir),selected_start_wep[dir]);
		ini_write_real("DATA","race_have"+string(dir),race_have[dir]);
		ini_write_real("DATA","bskin"+string(dir),race_bskin[dir]);
		ini_write_real("DATA","cskin"+string(dir),race_cskin[dir]);
		ini_write_real("DATA","dskin"+string(dir),race_dskin[dir]);
		ini_write_real("DATA","eskin"+string(dir),race_eskin[dir]);
		ini_write_real("DATA","fskin"+string(dir),race_fskin[dir]);
		ini_write_real("DATA","skin"+string(dir),skin[dir]);
		ini_write_real("DATA","crown_start"+string(dir),crown_start[dir]);
		var wepdir = 0;
		repeat(maxstartwep+1)
		{
			ini_write_real("DATA","start_wep_have"+string(wepdir)+"-"+string(dir),start_wep_have[wepdir,dir]);
			wepdir++;
		}
		dir += 1;
	}

	dir=0
	repeat(crownmax + secretcrownmax)
	{
	ini_write_real("DATA","crown_used"+string(dir),crown_used[dir]);
	dir++;
	}

	dir=1;
	repeat (maxgamemode)
	{
	ini_write_real("DATA","gamemode_have"+string(dir),gamemode_have[dir]);
	dir++;
	}

	ini_write_real("DATA","protowep",protowep);
	ini_write_real("DATA","protowepmod1",protowepmod1);
	ini_write_real("DATA","protowepmod2",protowepmod2);
	ini_write_real("DATA","protowepmod3",protowepmod3);
	ini_write_real("DATA","protowepmod4",protowepmod4);
	ini_write_real("DATA","protowep2",protowep2);
	ini_write_real("DATA","protowepmod12",protowepmod12);
	ini_write_real("DATA","protowepmod22",protowepmod22);
	ini_write_real("DATA","protowepmod32",protowepmod32);
	ini_write_real("DATA","protowepmod42",protowepmod42);

	ini_write_real("DATA","savedseed",seedModeSeed);
	ini_write_string("DATA","savedseedtext",seedModeSeedText);
}
