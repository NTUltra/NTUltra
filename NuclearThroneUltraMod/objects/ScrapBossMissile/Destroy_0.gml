event_inherited()
scrDrop(80,0)
snd_play(sndExplosion)
instance_create(x,y,Explosion)
with myCorpse
	speed = 0;