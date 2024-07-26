/// @description Special Theme
if UberCont.playFullyCompleted
{
	if !audio_is_playing(musThemeP)
	{
		with MusCont
		{
			song = musThemeP;
			snd_loop(musThemeP);
			audio_sound_gain(song,max(0,UberCont.opt_musvol),0);
		}
	}	
}