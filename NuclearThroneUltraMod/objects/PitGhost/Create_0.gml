raddrop = 3;
maxhealth = 8;
mySize = 1
loops = GetPlayerLoops();
if loops > 0
	maxhealth += 3;
event_inherited()
team = 7;
canFly = true;
meleedamage = 0
spr_idle = sprPitGhost;
spr_walk = sprPitGhost;
spr_hurt = sprPitGhostHurt;
spr_dead = sprPitGhostDead;
spr_fire = sprPitGhostFire;

snd_hurt = sndGhostHurt
snd_dead = sndGhostDie

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 30+random(60)
wkick = 0
actTime = 16;

acc = 1;
maxSpeed = 3.5;
materializeRange = 128;
justAroundWall = true;
targetPreviousX = x;
targetPreviousY = y;
targetX = x;
targetY = y;
targetLerp = 0;
goToTarget = false;
if loops > 0
	actTime -= 2;