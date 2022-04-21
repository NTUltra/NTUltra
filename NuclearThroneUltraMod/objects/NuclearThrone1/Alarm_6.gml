/// @description END BEAM
if !foreverBeam
{
	snd_play_2d(sndNothingBeamEnd);
	audio_stop_sound(sndNothingBeamLoop);
	with ThroneBeam
	{
		event_user(0);
	}
}
