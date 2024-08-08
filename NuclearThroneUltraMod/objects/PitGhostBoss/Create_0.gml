raddrop = 120;
maxhealth = 300
mySize = 3
event_inherited()
canFly = true;
meleedamage = 0
spr_idle = sprPitGhostBoss;
spr_walk = sprPitGhostBoss;
spr_hurt = sprPitGhostBossHurt;
spr_dead = sprPitGhostBossDead;
spr_fire = sprPitGhostBossFire1;
spr_fire_laser = sprPitGhostBossFire2;

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
vspeed = -2;
event_user(0);