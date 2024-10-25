/// @description Keep volume
if volumeShift > 0
{
	with MusCont
	{
		var p = 1 - other.volumeShift;
		audio_group_set_gain(agsfx,max(0, UberCont.opt_sfxvol * p),200);
		p = 1 + other.volumeShift*0.75;
	    audio_sound_gain(song, max(0, UberCont.opt_musvol * p), 200);
	}
}
alarm[5] = 10;