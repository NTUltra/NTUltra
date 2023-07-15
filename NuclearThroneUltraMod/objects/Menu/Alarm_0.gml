if mode == 0
{
	with Corpse
		instance_destroy();
if image_index < image_number-1
{
image_index += 1

if image_index < 7
{
alarm[0] = 2
snd_play_2d(sndMachinegun);
BackCont.shake += 3
if image_index = 6
alarm[0] = 10
}
else if image_index = 7
{
BackCont.shake += 8
//snd_play_2d(sndShovel)
//snd_play_2d(sndMeatExplo)
snd_play_2d(sndExplosion);

alarm[0] = 12;
}
else if image_index == 13
{
	alarm[0] = 15;
}
else if image_index < 12
{
	alarm[0] = 1;
	snd_play_2d(sndMachinegun);
	//snd_play_2d(sndMeatExplo)
	BackCont.shake += 4;
}
else if image_index == 12
{
	alarm[0] = 1;
	snd_play_2d(sndIntroFadeIn);
}
else if image_index == 14
{
	BackCont.shake += 20
	snd_play_2d(sndShovel)
	snd_play_2d(sndMeatExplo)
	snd_play_2d(sndExplosionXL);
	snd_play_2d(sndGammaGutsProc);
	alarm[0] = 8;
}
else if image_index < image_number-1
{
	alarm[0] = 4;
}

}
}

