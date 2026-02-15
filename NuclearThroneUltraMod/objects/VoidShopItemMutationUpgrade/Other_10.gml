/// @description Increase max health and make sure this never returns

// Inherit the parent event
event_inherited();
with Player
{
	skillpoints += 1;
	with instance_create(x,y,PopupText)
	{
		mytext = "+1 MUTATION!"
		theColour = c_lime;
		vspeed = -1;
		alarm[1] = 60;
	}
}
if UberCont.voidShopMutationTracker <= 0
	UberCont.voidShopMutationUpgrade = round(UberCont.voidShopMutationUpgrade * 2)
UberCont.voidShopMutationTracker = max(0, UberCont.voidShopMutationTracker - 1);
if UberCont.voidShopMutationTracker > 0
	cost = 10
else
	cost = UberCont.voidShopMutationUpgrade;