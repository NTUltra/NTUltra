/// @description Unlock a requirement
event_inherited();
var yy = y - 8;
repeat(2)
{
	if (scrHasAnySecretUltraUnlockRequirementsLeft())
	{
		var requirement = scrChooseSecretUltraToGetUnlockRequirementFor();
		if requirement > -1 && requirement <= UberCont.maxsecretultraOne
		{
			debug(array_length(UberCont.secret_ultra_unlk));
			with instance_create(x,yy,PopupText)
			{
				var r = "";
				if instance_exists(Player) && UberCont.secret_ultra_char[requirement] != 0
					r = Player.race_name[UberCont.secret_ultra_char[requirement]];
				mytext = r +"#" + UberCont.secret_ultra_unlk[requirement];
				theColour = c_lime;
				vspeed = -0.5;
				alarm[1] = 200;
			}    
			yy += 32;
			with UberCont
			{
				secret_ultra_requirement_unlocked[requirement] = 1;
			}
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
	if UberCont.canMultiCrown
		instance_create(x,y,VoidShopItemCrownPoints);
}