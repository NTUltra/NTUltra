event_inherited();
friction = 0;
trailColour = c_aqua;
typ = 2 //0 = normal, 1 = deflectable, 2 = destructable
hitEntities = [];
dmg = 30;
freezetime = 8;
if UberCont.ultramodSwap
	event_user(0);
xprev = x;
yprev = y;

alarm[2] = 120;