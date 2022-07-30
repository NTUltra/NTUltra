/// @description Gassious

// Inherit the parent event
event_inherited();
snd_play(sndToxicBoltGas,0.1,true);
repeat(4)
	with instance_create(x,y,ToxicGas)
		cantHitTeam = other.team;