/// @description Queue wuick restart on weekly
if instance_exists(SendWeekly)
{
	alarm[8] = 1;	
}
else
{
	if (scrIsGamemode(42))
	{
		if !scrIsGamemode(25)
			opt_gamemode[array_length(opt_gamemode)] = 25;
	}
	snd_play(sndMutant0Cnfm, 0, false, false)
	race = racepick
	crown = [1]
	//scrRaces()
	//scrCrowns()
	var ranChar = false;
	if race = 0 || scrIsGamemode(23)
	{
		ranChar = true;
		do {race = 1+irandom(racemax-1);} until race_have[race] = 1
	}
	if scrIsGamemode(47)
	{
		if opt_gm_char_active == 0
		{
			do {useRaceActive = 1+irandom(racemax-1);} until (race_have[useRaceActive] = 1)
			with instance_create(x,y,UnlockPopup)
				mytext=other.race_name[other.useRaceActive];
		}
		else
		{
			useRaceActive = opt_gm_char_active
		}
	}
	//if crown = 0
	//crown = ceil(irandom(crownmax))
	with WepPickup
		instance_destroy();
	with ThrowWep
		instance_destroy();
	with HardModeChest
		instance_destroy();
	with CrownIcon
		instance_destroy();
	with PlayerSpawn
		instance_destroy();
	with SurvivalWave
		instance_destroy();
	if !instance_exists(GenCont)
	with instance_create(x,y,GenCont)
	{race = other.race
	crown = other.crown}
	if !instance_exists(SendWeekly)
	{
		instance_create(x,y,Player)
		with Player
		{
			randomlySelected = ranChar;
			restarted = true;
			firstLoad = true;
			nochest = -1;
			skeletonlives = 0;
		}
	}
	else
	{
		keepRanChar = ranChar;
		alarm[8] = 1;
	}
	var loadedRun = UberCont.loadedRun;
	if loadedRun
		scrLoadRun();
	else if !instance_exists(StartDaily)
		room_restart()
}