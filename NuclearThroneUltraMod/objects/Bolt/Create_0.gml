event_inherited();
friction = 0.2//0.6
shouldMod = true;
typ = 2 //0 = normal, 1 = deflectable, 2 = destructable
candmg=true;
dmg = 20;
boltStick = BoltStick;
trailScale = 1;
trailShrink = 0.1;
trailColour = c_white;
if UberCont.ultramodSwap
	event_user(0);
xprev = xstart;
yprev = ystart;
hitEntities = [];
knockback = 6;
stickToWallTime = 10;
stickToWallTimeRandom = 20;
sndWallHit = sndBoltHitWall;