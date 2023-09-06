if instance_exists(BloodBurst)
timeout = 0
else
{
	if UberCont.normalGameSpeed == 60
		timeout += 0.5;
	else
		timeout += 1;
	if timeout > 5
	{
		audio_stop_sound(sndAorta)
		instance_destroy()
	}
}

