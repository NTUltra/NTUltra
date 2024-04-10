scrDrop(22,0)

event_inherited()

scrPopoDead();

if !sleeping && alarm[3] < 1{
instance_create(x,y,Explosion);
snd_play(sndExplosion);}

