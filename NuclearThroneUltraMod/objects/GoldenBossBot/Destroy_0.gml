/// @description Gold gold



// Inherit the parent event
event_inherited();

instance_create(x + 32,y,GoldChest);
instance_create(x - 32,y,GoldChest);
with UberCont {
	if isValidGamemodeToUnlock()
	{
		boss_bot_golden += 1;
		scrHasUnlockedMarksMan();
		scrSave();
	}
}