/// @description up/down char
if race == 13
	race = racemax - 1;
else if race == 0
	race = racemax
else if race == racemax
	race = 0;
else
{
	race -= 13;
	if race < 0
		race += 26;
}
event_user(0);