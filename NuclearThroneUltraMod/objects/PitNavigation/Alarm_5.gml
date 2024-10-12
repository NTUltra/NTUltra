/// @description Keep volume
with MusCont
{
	var p = 1 - other.volumeShift;
	audio_group_set_gain(agsfx,max(0, UberCont.opt_sfxvol * p),0);
	p = 1 + other.volumeShift*0.75;
    audio_sound_gain(song, max(0, UberCont.opt_musvol * p), 0);
}
alarm[5] = 10;