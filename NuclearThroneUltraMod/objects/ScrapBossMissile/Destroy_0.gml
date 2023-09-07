event_inherited()
scrDrop(70,0)
snd_play(sndExplosion)
instance_create(x,y,Explosion)
with myCorpse
	speed = 0;