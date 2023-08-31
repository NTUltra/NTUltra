if existTime > 15
{
	snd_play(sndExplosionL);
with instance_create(x,y,PurpleExplosion)
	team = other.team
}
existTime = 5;
event_inherited()

