function scrRestart() {
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
	}
	with SurvivalWave
		instance_destroy();
	if loadedRun
		scrLoadRun();
	else
		room_goto(romGame)
}
