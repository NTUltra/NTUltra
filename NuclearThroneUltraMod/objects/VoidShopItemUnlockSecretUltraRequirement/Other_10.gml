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
			var r = "";
			if instance_exists(Player)
				r = Player.race_name[UberCont.secret_ultra_char[requirement]];
			mytext = r +"#" + UberCont.secret_ultra_unlk[requirement];
			theColour = c_lime;
			moveSpeed = 0.01;
			alarm[1] = 120;
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