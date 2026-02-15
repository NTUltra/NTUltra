/// @description Increase max health and make sure this never returns

// Inherit the parent event
event_inherited();
with Player
{
	getVision = true;
	with instance_create(x,y,PopupText)
	{
		mytext = "REGAL VISIONS!"
		theColour = c_lime;
		vspeed = -1;
		alarm[1] = 60;
	}
}
event_user(1);
if UberCont.extraVan > -2
	instance_create(x,y,VoidShopItemReduceIdpdVans);