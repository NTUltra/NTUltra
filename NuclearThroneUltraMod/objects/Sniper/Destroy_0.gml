scrDrop(40,0)
if existTime > 15 && !sleeping
{
instance_create(x,y,Explosion);
snd_play(sndExplosion);
}
event_inherited()


