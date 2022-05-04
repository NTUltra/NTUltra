/// @description Different image
snd_play(sndPlasmaHit,0.1,true)
event_inherited()
with instance_create(x,y,PlasmaImpact)
{
	sprite_index = sprRedirectorPlasmaImpact;
}
Sleep(10)