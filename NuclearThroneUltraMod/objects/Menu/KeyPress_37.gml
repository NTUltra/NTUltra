/// @description Next char
do
{
	race --;
	if race == 13
		race = racemax;
	if race < 0
		race = 13;
}
until (UberCont.race_have[race])
	
event_user(0);