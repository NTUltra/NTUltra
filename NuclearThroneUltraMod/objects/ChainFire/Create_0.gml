event_inherited();
friction = 0//0.6
typ = 2 //0 = normal, 1 = deflectable, 2 = destructable
candmg=true;
dmg = 25;
chainType = Chain;
particle = Smoke;
hitEntities = [];
cx = xstart;
cy = ystart;
bounce = 0;
if UberCont.ultramodSwap
	event_user(0);