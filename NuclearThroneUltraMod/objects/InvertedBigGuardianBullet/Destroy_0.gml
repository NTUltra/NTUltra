/// @description EXPLODE WHY NOT

// Inherit the parent event
event_inherited();
snd_play(sndExplosion);
with instance_create(x,y,PurpleExplosion)
	team = other.team;

