/// @description Proto collect
if instance_exists(ProtoStatue)
{
	//There should be only one proto statue in the area so that is fine
	if speed = 0
	{instance_destroy()
	ProtoStatue.rad += 1
	collected = true;
	if !audio_is_playing(sndStatueXP)
		snd_play(sndStatueXP)
	}
}
