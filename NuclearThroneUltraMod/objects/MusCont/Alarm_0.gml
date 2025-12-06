if !UberCont.playFullyCompleted
{
	audio_stop_all()

	song = musThemeB;
	scrPlaySong()
	scrPlayAmbience()


	audio_group_set_gain(agsfx,max(0, UberCont.opt_sfxvol),0);

	audio_sound_gain(song,max(0,UberCont.opt_musvol),0);

	audio_sound_gain(amb,max(0,UberCont.opt_ambvol),0);

	audio_sound_gain(sndBossWin,max(0,UberCont.opt_musvol),0);
}

