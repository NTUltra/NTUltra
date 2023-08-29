if existTime > 15
{
	snd_play(sndExplosion);
with instance_create(x,y,Explosion)
	team = other.team
}
existTime = 5;
event_inherited()

