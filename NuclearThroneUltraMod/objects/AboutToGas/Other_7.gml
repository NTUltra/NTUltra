/// @description Spawn gass
instance_destroy();
with instance_create(x,y,ToxicGas)
{
	speed = 0.1;
	image_xscale -= 0.1;
	image_yscale -= 0.1;
	if other.image_xscale < 1
	{
		image_xscale -= 0.2;
		image_yscale -= 0.2;
	}
}
if !audio_is_playing(sndToxicBarrelGas)
	snd_play_2d(sndToxicBarrelGas);