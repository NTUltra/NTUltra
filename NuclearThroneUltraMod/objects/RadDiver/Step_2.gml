/// @description Took damage?

// Inherit the parent event
event_inherited();

if my_health < prevHealth
{
	amountOfProjectiles = max(3, ceil(prevHealth - my_health) * 3);
	event_user(0);	
}