if instance_exists(Ray)//remove this later when beam gets a unique sound
timeout = 0
else
{
if timeout > 3
{
audio_stop_sound(sndMorphLoop)
snd_play(sndMorphStop)
instance_destroy()
}
if UberCont.normalGameSpeed == 60
		timeout += 0.5;
	else
		timeout += 1
}

