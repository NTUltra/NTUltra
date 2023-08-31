/// @description xxx

existTime = 5;
// Inherit the parent event
event_inherited();

with myCorpse
{
	alarm[0] += 60;//Wait a little longer with spawning a portal	
}

with InactiveRerollStation
{
	instance_destroy();
	instance_create(x,y,RerollStation);
}