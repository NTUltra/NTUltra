scrDrop(20,0)
if !sleeping
{
	instance_create(x,y,Explosion)
	snd_play(sndExplosion)
}
event_inherited()



