function scrUnlockBSkin(raceIndex, unlockText, requiredGamemode) {
	//GAMEMODE UNLOCKABLE raceIndex=gamemode
	//raceIndex,unlock requirement, gamemode
	if (UberCont.race_bskin[raceIndex] == 0 && (scrIsGamemode(requiredGamemode) && (isValidGamemodeToUnlock(requiredGamemode))))
	{
	UberCont.race_bskin[raceIndex]=1

	with instance_create(x,y,UnlockPopup)
	{
	mytext=UberCont.race_name[raceIndex]+"#B-SKIN UNLOCKED#"
	+unlockText;
	}

	with UberCont
	scrSave();
	}



}
