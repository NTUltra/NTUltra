/// @description Unlock a requirement
event_inherited();
var requirement = scrChooseSecretUltraToGetUnlockRequirementFor();
debug(requirement);
with instance_create(x,y,PopupText)
{
	mytext = UberCont.secret_ultra_unlk[requirement];
	theColour=c_lime;
	moveSpeed = 1;
	alarm[1] = 60;
}
with UberCont
{
	secret_ultra_requirement_unlocked[requirement] = 1;
	scrSave();
}
if !scrHasAnySecretUltraUnlockRequirementsLeft()
{
	event_user(1);
	instance_create(x,y,VoidShopWeaponShifter);
}