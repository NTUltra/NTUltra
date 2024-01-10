/// @description xxx


// Inherit the parent event
event_inherited();
with UberCont {
	if isValidGamemodeToUnlock()
	{
		boss_bot_cursed += 1;
		scrHasUnlockedMarksMan();
		scrSave();
	}
}