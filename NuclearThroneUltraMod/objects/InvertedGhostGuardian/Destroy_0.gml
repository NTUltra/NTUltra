/// @description Boom

// Inherit the parent event
event_inherited();
if !sleeping
{
	snd_play(sndExplosionL);
	with instance_create(x,y,PurpleExplosion)
		team = other.team
}
