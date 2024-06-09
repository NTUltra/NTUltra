if instance_exists(ToxicBurst) || instance_exists(UltraToxicBurst)
timeout = 0
else
{
	if timeout > 4
{
audio_stop_sound(sndFlamerLoop)
snd_play(sndToxicBoltGas)
instance_destroy()
}
if UberCont.normalGameSpeed == 60
		timeout += 0.5;
	else
		timeout += 1

}

