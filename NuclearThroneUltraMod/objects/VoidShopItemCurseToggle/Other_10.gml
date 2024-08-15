/// @description Toggle curse

// Inherit the parent event
event_inherited();
with Player
{
	if curse == 0
	{
		curse = 1;
		with instance_create(x,y,PopupText)
		{
			mytext = "CURSE ON"
			theColour = c_purple;
			moveSpeed = 1;
			alarm[1] = 60;
		}
	}
	else
	{
		curse = 0;
		with instance_create(x,y,PopupText)
		{
			mytext = "CURSE OFF"
			theColour = c_lime;
			moveSpeed = 1;
			alarm[1] = 60;
		}
	}
}