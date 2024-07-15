event_inherited();
friction = 0.55
depth -= 1;
wallbounce = 0
alarm[2] =1

typ = 1 //0 = nothing, 1 = deflectable, 2 = destructable
dmg = 3;
if scrIsGamemode(9)//CASUAL MODE
	dmg = 2;
else if !scrIsGamemode(34)//HARD MODE
	alarm[3] = 5;