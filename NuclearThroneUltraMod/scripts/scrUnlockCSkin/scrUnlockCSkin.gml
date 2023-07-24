function scrUnlockCSkin(raceIndex, unlockText, requiredGamemode = 0) {
	if UberCont.race_cskin[raceIndex] == 0 && ((requiredGamemode == 0 || scrIsGamemode(requiredGamemode)) && (isValidGamemodeToUnlock(requiredGamemode)))
	{
	UberCont.race_cskin[raceIndex]=1

	with instance_create(x,y,UnlockPopup)
	{
	mytext=UberCont.race_name[raceIndex]+"#C-SKIN UNLOCKED#"
	+unlockText;
	}

	with UberCont
	scrSave();
	}
}
