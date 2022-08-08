/// @description Osploode

// Inherit the parent event
event_inherited();
with instance_create(x,y,OExplosion)
{
	team = other.team
	if team != 2
		sprite_index = sprOExploDeflected;
}
//snd_play(sndExplosionS);
snd_play(sndO,0.3,true,true);
BackCont.shake += 2;