/// @description Reshape the world
alarm[2] = 90;
alarm[6] = 2;
snd_play_2d(sndChangingArea);
BackCont.shake += 10;
if currentArea != 125
	with Acid
	{
		hue += 0.1;
		if acidSpeed < 0.005
			acidSpeed = 0.005;
		acidSpeed += 0.002;
	}
with MusCont
{
	var p = 1 - other.volumeShift;
	audio_group_set_gain(agsfx,max(0, UberCont.opt_sfxvol * p),0);
	p = 1 + other.volumeShift*0.75;
    audio_sound_gain(song, max(0, UberCont.opt_musvol * p), 0);
}
volumeShift += 0.06;