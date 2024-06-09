if instance_exists(DragonBurst)||instance_exists(UltraFlameBurst)||instance_exists(LightningDragonBurst)
	timeout = 0
else
{
	if timeout > 3
	{
		audio_stop_sound(sndDragonLoop)
			snd_play(sndDragonStop)
		instance_destroy()
	}
	if UberCont.normalGameSpeed == 60
		timeout += 0.5;
	else
		timeout += 1
}

