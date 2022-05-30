if instance_exists(SnowBurst) || instance_exists(Frazer)//remove this later when beam gets a unique sound
timeout = 0
else
{
timeout += 1
if timeout > 1
{
audio_stop_sound(sndSnowBlowerLoop)
snd_play(sndFrostShot1)
instance_destroy()
}
}

