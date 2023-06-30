function scrRestart() {
	debug("RESTART game");
	var loadedRun = UberCont.loadedRun
	scrEndOfRun();
	with all
	{
		if id != UberCont.id and persistent = true && id != Cursor.id
		{
			persistent = false
			instance_destroy()
		}
	}
	
	with Player
	{
		ultra_got[87] = 0;
		restarted = true;
		skeletonlives = 0;
	}
	with SurvivalWave
		instance_destroy();
	if !instance_exists(PlayerSpawn) && UberCont.goToLeaderboard
	{
		room_goto(romLeaderboard);
		with UberCont
		{
			goToLeaderboard = false;
			opt_gamemode = [0];
		}
		audio_stop_all();
		with MusCont {
			amb = amb0c;
			snd_loop(amb);
			audio_group_set_gain(agsfx,max(0, sqrt(UberCont.opt_sfxvol)),0);
		    audio_sound_gain(song,max(0,sqrt(UberCont.opt_musvol)),0);
		    audio_sound_gain(amb,max(0,sqrt(UberCont.opt_ambvol)),0);
		}
		debug("go to leaderboard");
		exit;
	}
	if loadedRun  && !keyboard_check_pressed(vk_enter) and !gamepad_button_check(0,gp_face4)//Not end of run clicked (ugly fix but Im falling asleep)
		scrLoadRun();
	else if !instance_exists(StartDaily)
	{
		room_goto(romGame)
	}
}
