event_inherited();
image_speed = 054
typ = 0 //0 = nothing, 1 = deflectable, 2 = destructable
dmg = 6;//Retail is 8
if !scrIsGamemode(34)//HARD MODE
	dmg = 10;
else if scrIsGamemode(9)//CASUAL MODE
	dmg = 4;