if instance_exists(BloodBurst)
timeout = 0
else
{
	if timeout > 4
	{
		audio_stop_sound(sndAorta)
		instance_destroy()
	}
	timeout += 1;
}

