event_inherited();
friction = 0.4
typ = 1 
dmg = 4;
if UberCont.opt_gamemode == 9//CASUAL MODE
	dmg = 3;
else if scrIsHardMode()//HARD MODE
	dmg = 6;