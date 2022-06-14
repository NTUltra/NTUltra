/// @description Osploode

// Inherit the parent event
event_inherited();
with instance_create(x,y,OExplosion)
{
	scrCanHumphry();
}
//snd_play(sndExplosionS);
snd_play(sndO,0.3,true,true);
BackCont.shake += 2;