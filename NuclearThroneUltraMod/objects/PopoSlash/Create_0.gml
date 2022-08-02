event_inherited();
image_speed = 0.4
typ = 0 //0 = nothing, 1 = deflectable, 2 = destructable
dmg = 6;//Retail is 8
if UberCont.opt_gamemode != 34//HARD MODE
	dmg = 10;
else if UberCont.opt_gamemode == 9//CASUAL MODE
	dmg = 4;