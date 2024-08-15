/// @description Increase max health and make sure this never returns

// Inherit the parent event
event_inherited();
with Player
{
	skillpoint += 1;
	with instance_create(x,y,PopupText)
	{
		mytext = "+1 MUTATION!"
		theColour = c_lime;
		moveSpeed = 1;
		alarm[1] = 60;
	}
}
UberCont.voidShopMutationUpgrade *= 2;
//UberCont.maxHpIncrease += 1
cost = UberCont.voidShopMutationUpgrade;