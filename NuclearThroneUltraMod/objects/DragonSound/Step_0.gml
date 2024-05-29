if instance_exists(DragonBurst)||instance_exists(UltraFlameBurst)||instance_exists(LightningDragonBurst)
	timeout = 0
else
{
	timeout += 1
	if timeout > 2
	{
		audio_stop_sound(sndDragonLoop)
			snd_play(sndDragonStop)
		instance_destroy()
	}
}

