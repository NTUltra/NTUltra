raddrop = 6
maxhealth = 24
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
alarm[1] = 30+random(90)
wkick = 0
actTime = 10;

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
loops = GetPlayerLoops();