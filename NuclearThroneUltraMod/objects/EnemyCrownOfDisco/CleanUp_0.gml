/// @description xxx
with MusCont
{
	audio_resume_sound(song);
	audio_resume_sound(amb);
	audio_sound_gain(song, max(0, sqrt(UberCont.opt_musvol)), 0);
}
audio_stop_sound(sndChubbyEmuSong);
ds_list_destroy(sheep);