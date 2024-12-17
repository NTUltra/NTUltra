/// @description Gold gold



// Inherit the parent event
event_inherited();

instance_create(x,y-32,GoldChest);

with UberCont {
	if isValidGamemodeToUnlock()
	{
		boss_bot_golden += 1;
		scrHasUnlockedMarksMan();
		scrSave();
	}
}