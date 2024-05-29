if instance_exists(HeavyFlameBurst)
timeout = 0
else
{
timeout += 1
if timeout > 2
{
audio_stop_sound(sndHeavyFlameThrowerLoop)
snd_play(sndHeavyFlameThrowerStop)
instance_destroy()
}
}

