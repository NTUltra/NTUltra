/// @description Unlock a requirement
event_inherited();
var yy = y - 8;
repeat(2)
{
	if (scrHasAnySecretUltraUnlockRequirementsLeft())
	{
		var requirement = scrChooseSecretUltraToGetUnlockRequirementFor();
		with instance_create(x,yy,PopupText)
		{
			mytext = UberCont.secret_ultra_unlk[requirement];
			theColour = c_lime;
			moveSpeed = 0.25;
			alarm[1] = 90;
		}    
		yy += 32;
		with UberCont
		{
			secret_ultra_requirement_unlocked[requirement] = 1;
		}
	}
}
with UberCont
{
	scrSave();
}
if !scrHasAnySecretUltraUnlockRequirementsLeft()
{
	event_user(1);
	instance_create(x,y,VoidShopWeaponShifter);
}