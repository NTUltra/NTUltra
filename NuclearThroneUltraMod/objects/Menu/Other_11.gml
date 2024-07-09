/// @description up/down char
if UberCont.unlocked_more_characters
{
	do
	{
		if race == 15
			race = racemax - 1;
		else if race == 0
			race = racemax
		else if race == racemax
			race = 0;
		else if race == 26
			race = 15;
		else if race == 13
			race = 2;
		else if race == 2
			race = 13;
		else
		{
			race -= 13;
			if race < 0
				race += 26;
		}
	}
	until (UberCont.race_have[race])
	event_user(0);
}