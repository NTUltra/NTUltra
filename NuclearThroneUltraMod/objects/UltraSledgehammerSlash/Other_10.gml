/// @description Hit sound

// Inherit the parent event
event_inherited();
if !hasHit
{
	hasHit = true;
	snd_play(sndUltraSledgeHammerHit,0.1);
}