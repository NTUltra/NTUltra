///xxx();
// /@description
///@param
function scrLegacyWeaponStart(){
	//Check if old weaponstart data
	var saveFileString;
	saveFileString=game_save_id + "ntultra"+string(version)+".sav";
	ini_open(saveFileString);
	var isOld = false;
	var racedir = 1;
	repeat(racemax)
	{
		var dir=0;
		repeat(maxstartwep+1)
		{
			if (ini_read_real("DATA","start_wep_have"+string(dir)+string(racedir),-2) != -2)
			{
				isOld = true;
				start_wep_have[dir,racedir] = ini_read_real("DATA","start_wep_have"+string(dir)+string(racedir),start_wep_have[dir,racedir]);
				debug("TAKEN FROM OLD DATA:", start_wep_have);
				ini_key_delete("DATA","start_wep_have"+string(dir)+string(racedir));
			}
			dir++;
		}
		racedir++;
	}
	if isOld
	{
		dir = 1;
		repeat(racemax)
		{
			ini_write_real("DATA","selected_start_wep"+string(dir),selected_start_wep[dir]);
			ini_write_real("DATA","race_have"+string(dir),race_have[dir]);
			ini_write_real("DATA","bskin"+string(dir),race_bskin[dir]);
			ini_write_real("DATA","cskin"+string(dir),race_cskin[dir]);
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
	}
	ini_close();
}