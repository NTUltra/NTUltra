/// @description Wall hit
instance_create(xprev,yprev,Dust)
snd_play(sndMetalPipeHit,0.02);
if canDealDamage == 1
{
	event_user(1);
}