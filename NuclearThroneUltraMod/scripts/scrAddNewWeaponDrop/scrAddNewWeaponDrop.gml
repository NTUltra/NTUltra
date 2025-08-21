///xxx();
// /@description
///@param
function scrAddNewWeaponDrop(newWep, alsoFound = false){
	if newWep != 0
		with UberCont
		{
			if !array_contains(droppedWeapons,newWep)
			{
				droppedWeapons[array_length(droppedWeapons)] = newWep;
				if alsoFound && !array_contains(foundWeapons,newWep)
				{
					foundWeapons[array_length(foundWeapons)] = newWep;
				}
			}
			var raceType = -1;
			if instance_exists(Player)
			{
				raceType = Player.race;	
			} else if instance_exists(PlayerSpawn)
			{
				raceType = PlayerSpawn.race;
			} else if instance_exists(DataRef)
			{
				raceType = DataRef.race;	
			}
			if (raceType != -1 && !wep_found[raceType, newWep]) {
				wep_found[raceType,newWep] = true;
				if !any_wep_found[newWep]
				{
					newWeapons[array_length(newWeapons)] = newWep;
				}
				any_wep_found[newWep] = true;
				var saveFileString;
				saveFileString=game_save_id + "ntultra"+string(currentSave)+".sav";
				ini_open(saveFileString);
					ini_write_real("STATS","wep_found"+string(raceType)+"-"+string(newWep),1);
					ini_write_real("STATS","any_wep_found"+string(newWep),1);
				ini_close();
			}
		}
}