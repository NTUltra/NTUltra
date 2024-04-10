/// @description Gassious

// Inherit the parent event
event_inherited();
if !sleeping
{
	snd_play(sndToxicBoltGas,0.1,true);
	repeat(5)
		with instance_create(x,y,ToxicGas)
			cantHitTeam = other.team;

}
with instance_create(x,y,ExploderExplo)
	motion_add(other.direction,1)