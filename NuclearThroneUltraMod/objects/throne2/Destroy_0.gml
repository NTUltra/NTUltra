scrDrop(100,50)
scrDrop(100,0)
scrDrop(80,0)
event_inherited()
scrEndBossMusic();
snd_play(sndExplosionL);
instance_create(x,y,GreenExplosion);
instance_create(x,y,BigWallBreak);
