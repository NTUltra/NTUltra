/// @description Slowlyr eset humphry skill decay

// Inherit the parent event
event_inherited();

with PlayerAlarms
{
	alarm[6] = max(alarm[6],humphryDelay);
}