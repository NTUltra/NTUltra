/// @description Decide ending
if type == 0
{
	audio_stop_sound(musCredits);
	audio_stop_sound(amb0c);
	snd_play_2d(sndPortalOpen);
	snd_play_2d(sndPortalClose);
	with ThroneIISpiral
	{
		instance_destroy();	
	}
	with Ending1
	{
		event_user(0);	
	}
}