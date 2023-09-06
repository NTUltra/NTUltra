/// @description Take longer to spawn portal

// Inherit the parent event
event_inherited();

with myCorpse
{
	alarm[0] += 60;//Wait a little longer with spawning a portal	
}