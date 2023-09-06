event_inherited();
friction = 0.2//0.6
typ = 2 //0 = normal, 1 = deflectable, 2 = destructable
candmg=true;
dmg = 20;
boltStick = BoltStick;
hitEntities = [];
trailScale = 1;
trailColour = c_white;
if UberCont.ultramodSwap
	event_user(0);
xprev = x;
yprev = y;
hitEntities = [];