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
	if UberCont.goToLeaderboard
	{
		room_goto(romLeaderboard);
		with UberCont
		{
			goToLeaderboard = false;	
		}
		debug("go to leaderboard");
		exit;
	}
	if loadedRun  && !keyboard_check_pressed(vk_enter) and !gamepad_button_check(0,gp_face4)//Not end of run clicked (ugly fix but Im falling asleep)
		scrLoadRun();
	else
	{
		room_goto(romGame)
	}
}
