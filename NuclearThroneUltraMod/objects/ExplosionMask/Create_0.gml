/// @description dmg
image_speed = 0.4;
dmg = 4;
if scrIsGamemode(9)//CASUAL MODE
{
	dmg = 4;
	image_speed = 0.6;
}
else if scrIsHardMode()//HARD MODE
	dmg = 10;
else if GetPlayerLoops() > 0
	dmg = 5;
owner = noone