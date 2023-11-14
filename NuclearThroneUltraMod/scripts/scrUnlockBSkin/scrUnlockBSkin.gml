function scrUnlockBSkin(raceIndex, unlockText, requiredGamemode = 0) {
	//GAMEMODE UNLOCKABLE raceIndex=gamemode
	//raceIndex,unlock requirement, gamemode
	if (UberCont.race_bskin[raceIndex] == 0 && ((requiredGamemode == 0 || scrIsGamemode(requiredGamemode)) && (isValidGamemodeToUnlock(requiredGamemode))))
	{
	UberCont.race_bskin[raceIndex]=1

	with instance_create(x,y,UnlockPopup)
	{
		mytext=UberCont.race_name[raceIndex]+"#B-SKIN UNLOCKED#"
		+unlockText;
		alarm[0] += string_length(unlockText);
	}

	with UberCont
	scrSave();
	}



}
