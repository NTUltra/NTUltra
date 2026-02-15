/// @description Increase max health and make sure this never returns

// Inherit the parent event
event_inherited();
with Player
{
	if ultra_got[62] && altUltra//LIVING ARMOUR
	{
		maxarmour += 1;
		armour += 1;
		with instance_create(x,y,PopupText)
		{
			mytext = "+1 MAX ARMOUR!"
			theColour = c_lime;
			vspeed = -1;
			alarm[1] = 60;
		}
	}
	else
	{
		maxhealth += 1;
		my_health += 1;
		with instance_create(x,y,PopupText)
		{
			mytext = "+1 MAX HP!"
			theColour = c_lime;
			vspeed = -1;
			alarm[1] = 60;
		}
	}
}
if UberCont.voidShopHealthTracker <= 0
	UberCont.voidShopHealthUpgrade = round(UberCont.voidShopHealthUpgrade * 2)
UberCont.voidShopHealthTracker = max(0, UberCont.voidShopHealthTracker - 1);
if UberCont.voidShopHealthTracker > 0
	cost = 5
else
	cost = UberCont.voidShopHealthUpgrade;