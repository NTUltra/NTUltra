raddrop = 3
maxhealth = 3
mySize = 1
event_inherited()
canFly = true;
meleedamage = 0
spr_idle = sprPitGhostLaserGuy;
spr_walk = sprPitGhostLaserGuy;
spr_hurt = sprPitGhostLaserGuyHurt;
spr_dead = sprPitGhostLaserGuyDead;
spr_fire = sprPitGhostLaserGuyFire;

snd_hurt = sndGhostHurt
snd_dead = sndSmallGhostDie

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 30+random(90)
wkick = 0
actTime = 10;

acc = 1;
maxSpeed = 4;
materializeRange = 160;
justAroundWall = true;
targetPreviousX = x;
targetPreviousY = y;
targetX = x;
targetY = y;
targetLerp = 0;
goToTarget = false;