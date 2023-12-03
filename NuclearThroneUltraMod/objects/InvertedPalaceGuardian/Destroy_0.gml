/// @description Boom

// Inherit the parent event
event_inherited();
if meleedamage > 0
{
	snd_play(sndExplosionL);
	with instance_create(x,y,PurpleExplosion)
		team = other.team
}