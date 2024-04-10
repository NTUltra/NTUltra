if existTime > 15 && !sleeping
{
	instance_create(x,y,GreenExplosion);
	snd_play(sndExplosionL);
}
existTime = 5;
event_inherited()


