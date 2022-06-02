if instance_exists(FrostRay) || instance_exists(Frazer)//remove this later when beam gets a unique sound
timeout = 0
else
{
timeout += 1
if timeout > 1
{
audio_stop_sound(sndSnowBlowerLoop)
instance_destroy()
}
}

