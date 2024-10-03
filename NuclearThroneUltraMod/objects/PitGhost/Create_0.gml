raddrop = 6
maxhealth = 12
mySize = 1
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
alarm[1] = 30+random(90)
wkick = 0
actTime = 15;

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