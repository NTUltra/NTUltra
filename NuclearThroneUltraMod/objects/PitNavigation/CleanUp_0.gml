/// @description Resetaudio
with MusCont
{
	audio_group_set_gain(agsfx,max(0, UberCont.opt_sfxvol),0);
    audio_sound_gain(song, max(0, UberCont.opt_musvol), 0);
}
