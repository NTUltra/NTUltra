///xxx();
// /@description
///@param
function scrEndBossMusic(){
	if !instance_exists(SurvivalWave) && !instance_exists(WantBoss) && instance_number(object_index) == 1
	with MusCont
	{
	//optimise sound_discard(song)
	//optimise sound_discard(amb)

	audio_stop_sound(song);
	song = musUltraBossWin
	audio_play_sound(song,1,false)
	//snd_loop(amb)

	audio_group_set_gain(agsfx,max(0, UberCont.opt_sfxvol),0);

	audio_sound_gain(song,max(0,UberCont.opt_musvol),0);

	audio_sound_gain(amb,max(0,UberCont.opt_ambvol),0);

	//audio_sound_gain(sndBossWin,max(0,sqrt(UberCont.opt_musvol)),0);

	}
}