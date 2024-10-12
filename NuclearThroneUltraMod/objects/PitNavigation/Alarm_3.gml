/// @description It happens slowly
with MusCont
{
	if audio_is_playing(song)
	{
		audio_stop_sound(song);	
	}
	if audio_is_playing(amb)
	{
		audio_stop_sound(amb);	
	}
	song = musUltraInvertedRoute;
	amb = ambUltra138;
	snd_loop(song);
	snd_loop(amb);
	audio_group_set_gain(agsfx,max(0, UberCont.opt_sfxvol),0);
	audio_sound_gain(song,max(0,UberCont.opt_musvol),0);
	audio_sound_gain(amb,max(0,UberCont.opt_ambvol),0);
}
instance_create(x,y,Acid);
alarm[4] = 20;
