/// @description Increase max health and make sure this never returns

// Inherit the parent event
event_inherited();
with Player
{
	maxhealth += 1;
	my_health += 1;
	with instance_create(x,y,PopupText)
	{
		mytext = "+1 MAX HP!"
		theColour = c_lime;
		moveSpeed = 1;
		alarm[1] = 60;
	}
}
UberCont.maxHpIncrease += 1
event_user(1);