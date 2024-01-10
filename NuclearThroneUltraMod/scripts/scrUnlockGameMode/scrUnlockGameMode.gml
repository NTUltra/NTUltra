function scrUnlockGameMode(gm, unlockText, specificGamemode = 0) {
	//GAMEMODE UNLOCKABLE gm=gamemode
	if UberCont.gamemode_have[gm]=0 && (isValidGamemodeToUnlock() || scrIsGamemode(specificGamemode))
	{
		UberCont.gamemode_have[gm]=1
		with instance_create(x,y,UnlockPopup)
		{
			mytext=UberCont.gamemode[gm]+ "#GAMEMODE UNLOCKED!#"+unlockText
			alarm[0] += string_length(unlockText);
		}

		with UberCont
		scrSave();
		
		return true;
	}
	return false;
}
