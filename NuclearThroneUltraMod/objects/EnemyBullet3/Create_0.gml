event_inherited();
friction = 0.6
depth -= 1;
wallbounce = 0
alarm[2] =1

typ = 1 //0 = nothing, 1 = deflectable, 2 = destructable
dmg = 2;
if scrIsGamemode(9)//CASUAL MODE
	dmg = 1;
else if !scrIsGamemode(34)//HARD MODE
	alarm[3] = 5;