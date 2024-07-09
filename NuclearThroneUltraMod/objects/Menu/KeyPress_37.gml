/// @description Next char
if hasNoMenuOpen()
{
	do
	{
		race --;
		if race == 13
			race = racemax;
		else if race == 14
			race = 12;
		else if race == 15
			race = 13;
		else if race == 12
			race = 14
		else if race < 0
			race = 15;
	}
	until (UberCont.race_have[race])
	
	event_user(0);
}