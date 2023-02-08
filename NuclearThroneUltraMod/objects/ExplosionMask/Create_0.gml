/// @description dmg
image_speed = 0.6;
dmg = 5;
if UberCont.opt_gamemode == 9//CASUAL MODE
	dmg = 3;
else if scrIsHardMode()//HARD MODE
	dmg = 10;
owner = noone