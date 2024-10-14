/// @description Explode
snd_play(sndExplosion,0.1,true);
snd_play(sndClusterOpen,0.1,true);
snd_play(choose(sndWater1,sndWater2),0.1,true);
instance_create(x + hspeed,y + vspeed,Explosion)