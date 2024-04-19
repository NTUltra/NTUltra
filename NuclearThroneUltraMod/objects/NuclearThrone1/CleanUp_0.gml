/// @description Clean beam
if audio_is_playing(sndNothingBeamLoop)
{
	snd_play_2d(sndNothingBeamEnd);
	audio_stop_sound(sndNothingBeamLoop);
	with ThroneBeam
	{
		event_user(0);
	}
}
