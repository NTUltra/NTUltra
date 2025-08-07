scrDrop(100,100);
raddrop = raddrop + min(radAmmo,maxRadAmmo);
event_inherited()

if !instance_exists(SurvivalWave) && !instance_exists(WantBoss) && instance_number(HostileHorror) == 1
	with MusCont
	{
		audio_stop_sound(song);
		song = musUltraBossWin
		snd_play_2d(song)
		audio_group_set_gain(agsfx,max(0, UberCont.opt_sfxvol),0);
		audio_sound_gain(song,max(0,UberCont.opt_musvol),0);
		audio_sound_gain(amb,max(0,UberCont.opt_ambvol),0);
	}
scrBossKill();
