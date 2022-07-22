function scrRestart() {
	debug("RESTART");
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
		restarted = true;
		skeletonlives = 0;
	}
	with SurvivalWave
		instance_destroy();
	if loadedRun  && !keyboard_check_pressed(vk_enter) and !gamepad_button_check(0,gp_face4)//Not end of run clicked (ugly fix but Im falling asleep)
		scrLoadRun();
	else
		room_goto(romGame)
}
