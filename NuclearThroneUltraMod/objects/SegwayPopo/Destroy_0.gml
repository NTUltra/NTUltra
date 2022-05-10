scrDrop(25,0)

event_inherited()

scrPopoDead();

if alarm[3] < 1{
instance_create(x,y,Explosion);
snd_play(sndExplosion);}

