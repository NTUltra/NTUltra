/// @description Explode

// Inherit the parent event
event_inherited();
snd_play(sndExplosionS,0.1,true);
instance_create(x+hspeed,y+vspeed,SmallExplosion);