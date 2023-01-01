event_inherited()
if object_index == MiniPlasmaBall
{
	snd_play(sndPlasmaHit,0.1,true)
	instance_create(x + hspeed,y + vspeed,MiniPlasmaImpact)
}