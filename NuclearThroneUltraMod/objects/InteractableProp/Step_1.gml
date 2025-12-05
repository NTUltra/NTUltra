/// @description
if my_health <= 0 && !canBeKilled
{
	alarm[9] = 70;
	canBeKilled = true;
}
// Inherit the parent event
if alarm[9] > 0
	my_health = max(my_health,20);
	
event_inherited();