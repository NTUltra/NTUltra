scrDrop(50,50)

event_inherited()
if UberCont.area == 4 || UberCont.area == 111 || UberCont.area == 115
scrDefeatedRequiredBoss(secretChallengeBosses.hyperCrystal);
if !instance_exists(SurvivalWave) && !instance_exists(WantBoss) && instance_number(object_index) == 1
with MusCont {
	audio_stop_sound(song)
	if instance_exists(Player) 
	{
		if Player.area == 4
			song = mus4;
		else if Player.area == 111 || Player.area == 115
			song = mus104;
	}
	snd_loop(song)
	audio_group_set_gain(agsfx,max(0, UberCont.opt_sfxvol),0);
	audio_sound_gain(song,max(0,UberCont.opt_musvol),0);
	audio_sound_gain(amb,max(0,UberCont.opt_ambvol),0);
}