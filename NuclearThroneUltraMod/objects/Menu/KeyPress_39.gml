/// @description Next char
if hasNoMenuOpen()
{
	do
	{
		race ++;
		if race == 15
			race = 13;
		else if race == 13
			race = 15;
		else if race == 14
			race = 16;
		else if race == 16
			race = 0;
		else if race > racemax
			race = 14;

	}
	until (UberCont.race_have[race])
	event_user(0);
}