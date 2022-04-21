/// @description intro step 3 & 4
if !riseStep
{
	alarm[2] = 10;
	riseStep = true;
	snd_play_2d(sndNothingBeamEnd);
	audio_stop_sound(sndNothingBeamLoop);

	with ThroneBeam
	{
		event_user(0);
	}
}
else
{
	image_speed = 0.5;
	alarm[3] = sprite_get_number(spr_activate)/image_speed;
	snd_play_2d(sndNothingRise);
	prevImageIndex = 1;
	image_index = 1;
}
