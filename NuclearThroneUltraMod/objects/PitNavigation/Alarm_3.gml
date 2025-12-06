/// @description It happens slowly
with MusCont
{
	if audio_is_playing(song)
	{
		scrStopSong();	
	}
	if audio_is_playing(amb)
	{
		scrStopAmbience();	
	}
	song = musUltraInvertedRoute;
	amb = ambUltra138;
	scrPlaySong();
	scrPlayAmbience();
	audio_group_set_gain(agsfx,max(0, UberCont.opt_sfxvol),0);
	audio_sound_gain(song,max(0,UberCont.opt_musvol),0);
	audio_sound_gain(amb,max(0,UberCont.opt_ambvol),0);
}
if !instance_exists(Acid)
	instance_create(x,y,Acid);
alarm[4] = 20;
