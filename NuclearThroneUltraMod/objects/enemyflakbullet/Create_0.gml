event_inherited();
friction = 0.4
loops = 0;
typ = 1 
dmg = 4;
if scrIsGamemode(9)//CASUAL MODE
{
	dmg = 3;
	loops --;
}
else if scrIsHardMode()//HARD MODE
{
	dmg = 6;
	loops++;
}