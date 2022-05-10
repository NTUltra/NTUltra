/// @description Explooode
event_inherited()


snd_play(sndExplosionL);
with instance_create(x,y,PurpleExplosion)
	team = other.team
exploAmount = 16;
