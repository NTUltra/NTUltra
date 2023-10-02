/// @description dmg
image_speed = 0.6;
dmg = 5;
if scrIsGamemode(9)//CASUAL MODE
	dmg = 4;
else if scrIsHardMode()//HARD MODE
	dmg = 10;
owner = noone