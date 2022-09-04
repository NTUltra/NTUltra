event_inherited()
scrDrop(60,0)
snd_play(sndExplosion)
instance_create(x,y,Explosion)
with myCorpse
	speed = 0;