/// @description Took damage?

// Inherit the parent event
event_inherited();

if my_health < prevHealth
{
	amountOfProjectiles = max(damageMultiplier, ceil(prevHealth - my_health) * damageMultiplier);
	event_user(0);	
}