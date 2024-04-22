/// @description Start intro
image_speed = 0.4;
snd_loop(sndVoidEyeCreeping);
//mySound = snd_play(sndBlobTrail,0,false,true,2,false,false,0.8,true,id);
with instance_create(x,y,DarkOverlay)
{
	alarm[0] = 300;
}