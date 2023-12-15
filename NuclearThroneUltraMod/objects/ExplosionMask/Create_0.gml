/// @description dmg
image_speed = 0.4;
dmg = 5;
if scrIsGamemode(9)//CASUAL MODE
{
	dmg = 4;
	image_speed = 0.6;
}
else if scrIsHardMode()//HARD MODE
	dmg = 10;
owner = noone