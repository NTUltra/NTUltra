function scrUnlockAltSkin(raceIndex, altIndex) {
	//GAMEMODE UNLOCKABLE raceIndex=gamemode
	//raceIndex,unlock requirement, gamemode
	if (
	(
		(UberCont.race_dskin[raceIndex] == 0 && altIndex == 0 ) ||
		(UberCont.race_eskin[raceIndex] == 0 && altIndex == 1 ) ||
		(UberCont.race_fskin[raceIndex] == 0 && altIndex == 2 )
	) && 
	(isValidGamemodeToUnlock(UberCont.opt_gamemode) ))//Crown start and hunter marked only can unlock shit
	{
		if (UberCont.race_dskin[raceIndex] == 0 && altIndex == 0 )
			UberCont.race_dskin[raceIndex] = 1;
		else if (UberCont.race_eskin[raceIndex] == 0 && altIndex == 1 )
			UberCont.race_eskin[raceIndex] = 1;
		else if (UberCont.race_fskin[raceIndex] == 0 && altIndex == 2 )
			UberCont.race_fskin[raceIndex] = 1;

	with instance_create(x,y,UnlockPopup)
	{
		mytext=UberCont.race_name[raceIndex]+"#SECRET-SKIN UNLOCKED#";
	}

	with UberCont
	scrSave();
	}



}
