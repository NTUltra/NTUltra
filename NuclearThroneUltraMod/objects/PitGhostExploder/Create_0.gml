raddrop = 5
maxhealth = 16
loops = GetPlayerLoops();
if loops > 0
	maxhealth += 3;
mySize = 1
event_inherited()
team = 7;
canFly = true;
meleedamage = 0
spr_idle = sprPitGhostExploder;
spr_walk = sprPitGhostExploder;
spr_hurt = sprPitGhostExploderHurt;
spr_dead = sprPitGhostExploderDeadLoop1;
spr_fire = sprPitGhostExploderFire;

snd_hurt = sndGhostHurt
snd_dead = sndGhostDie

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 30+random(60)
wkick = 0
actTime = 16;

acc = 2;
maxSpeed = 4.25;
materializeRange = 128;
justAroundWall = true;
targetPreviousX = x;
targetPreviousY = y;
targetX = x;
targetY = y;
targetLerp = 0;
goToTarget = false;
if loops > 0
	actTime = 13;