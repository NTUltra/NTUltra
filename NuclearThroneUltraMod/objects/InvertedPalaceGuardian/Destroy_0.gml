/// @description Boom

// Inherit the parent event
event_inherited();
if !sleeping && meleedamage > 0 && existTime > 20
{
	snd_play(sndExplosionL);
	with instance_create(x,y,PurpleExplosion)
		team = other.team
}