if instance_exists(FlameBurst)||instance_exists(GoldenFlameBurst)//remove this later when beam gets a unique sound
	timeout = 0
else
{
	if timeout > 4
	{
		audio_stop_sound(sndFlamerLoop)
		snd_play(sndFlamerStop)
		instance_destroy()
	}
	if UberCont.normalGameSpeed == 60
		timeout += 0.5;
	else
		timeout += 1
}

