if KeyCont.key_fire[p] = 1 and (UberCont.mouse__x < x+16 and UberCont.mouse__y < y+16 and UberCont.mouse__x > x and UberCont.mouse__y > y-20)
{
	with Player
	{
		var keepRace = race;
		if other.char == 0
		{
			do {race = 1+irandom(racemax-1);} until UberCont.race_have[race] = 1
		}
		else
		{
			race = other.char;
		}
		bskin = UberCont.skin[race];
		scrLoadRace();
		fakeRace = race;
		copyPassive = race;
		race = keepRace;
	}
	snd_play_2d(sndClick);
	Player.charpoints--;
	with CharIcon
		instance_destroy()
	
	with LevCont
		instance_destroy()
	if Player.charpoints > 0 || Player.skillpoints > 0 || Player.crownpoints > 0
	{
		instance_create(x,y,LevCont);
	}
	else
	{
		if !instance_exists(GenCont)
		with instance_create(x,y,GenCont){
		race = Player.race;}
	}
}

