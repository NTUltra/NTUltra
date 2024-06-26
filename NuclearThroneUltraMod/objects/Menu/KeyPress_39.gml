/// @description Next char
if hasNoMenuOpen()
{
	do
	{
		race ++;
		if race == 14
			race = 0;
		if race > racemax
			race = 14;

	}
	until (UberCont.race_have[race])
	event_user(0);
}