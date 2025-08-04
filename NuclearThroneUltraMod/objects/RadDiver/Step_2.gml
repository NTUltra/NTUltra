/// @description Took damage?

// Inherit the parent event
event_inherited();

if !sleeping && my_health < prevHealth
{
	amountOfProjectiles = max(damageMultiplier, ceil(prevHealth - max(0,my_health)) * damageMultiplier);
	event_user(0);	
}