event_inherited();
typ = 3 //0 = normal, 1 = deflectable, 2 = destructable, 3 = deflectable
dist = 0
dmg = 4;
if scrIsHardMode()
	dmg = 6;
if GetPlayerLoops() > 2
{
	alarm[1] = 2;
}

alarm[2] = 1;