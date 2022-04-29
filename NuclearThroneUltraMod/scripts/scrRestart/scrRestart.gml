function scrRestart() {
	with all
	{
		if id != UberCont.id and persistent = true
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
	room_goto(romGame)
}
