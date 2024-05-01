/// @description Start intro
image_speed = 0.4;
snd_loop(sndVoidEyeCreeping);
with instance_create(x,y,DarkOverlay)
{
	alarm[0] = 300;
}