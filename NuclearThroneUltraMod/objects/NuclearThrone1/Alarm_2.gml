/// @description intro step 3
alarm[3] = 30;
snd_play_2d(sndNothingBeamEnd);
audio_stop_sound(sndNothingBeamLoop);

with ThroneBeam
{
	event_user(0);
}
