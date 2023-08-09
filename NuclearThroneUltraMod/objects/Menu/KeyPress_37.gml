/// @description Next char
race --;
if race == 13
	race = racemax;
if race < 0
	race = 13;
	
event_user(0);