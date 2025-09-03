/// @description Get crown and 

// Inherit the parent event
event_inherited();
instance_create(x,y,FakeCrown);
with Player
{
	scrGiveCrownPoints(1);
	with instance_create(x,y,PopupText)
	{
		mytext = "+1 CROWN!"
		theColour = c_lime;
		moveSpeed = 1;
		alarm[1] = 60;
	}
}
cost += 1;