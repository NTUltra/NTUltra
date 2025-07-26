scrDrop(100,50);
scrDrop(50,0);
scrBossKill();
if !instance_exists(SurvivalWave) && !instance_exists(WantBoss) && instance_number(HyenaBoss) == 1
	with MusCont
	{
		audio_stop_sound(song);
		if instance_exists(Player) && Player.area == 2
		{
			song = mus2;
			amb = amb2;
			if !audio_is_playing(song)
			{
				snd_loop(song);
			}
			if !audio_is_playing(amb)
			{
				snd_loop(amb);
			}
		}
		else
		{
			song = musUltraBossWin
			snd_play_2d(song)
		}
		audio_group_set_gain(agsfx,max(0, UberCont.opt_sfxvol),0);
		audio_sound_gain(song,max(0,UberCont.opt_musvol),0);
		audio_sound_gain(amb,max(0,UberCont.opt_ambvol),0);
	}
event_inherited()