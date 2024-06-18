/// @description End it
with Player
{
	scrHeal(1);
	snd_play_2d(sndRogueRefund);
	BackCont.shake += 6;
}
instance_destroy();