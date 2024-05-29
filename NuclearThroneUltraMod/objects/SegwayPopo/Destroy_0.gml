scrDrop(22,0)

event_inherited()

scrPopoDead();

if !sleeping && existTime > 30{
instance_create(x,y,Explosion);
snd_play(sndExplosion);}

