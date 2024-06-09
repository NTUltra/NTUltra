if instance_exists(FrostRay) || instance_exists(Frazer)//remove this later when beam gets a unique sound
timeout = 0
else
{
if timeout > 3
{
audio_stop_sound(sndSnowBlowerLoop)
instance_destroy()
}
if UberCont.normalGameSpeed == 60
		timeout += 0.5;
	else
		timeout += 1
}

