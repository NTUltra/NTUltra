/// @description Will be gone after collecting

// Inherit the parent event
event_inherited();

scrDefeatedRequiredBoss(bountyNumber);
with instance_create(x,y,PopupText)
{
	mytext = "BOUNTY COMPLETED!";
	theColour=c_lime;
	vspeed = -1;
	alarm[1] = 60;
}
event_user(1);