maxhealth = 10;
mySize = 1
raddrop = 2
event_inherited();
spr_walk = sprCrownGhostSmall;
spr_idle = sprCrownGhostSmall;
spr_hurt = sprCrownGhostSmallHurt;
spr_dead = mskPickupThroughWall;
team = 0;
target = -1
right = choose(1,-1)
image_speed = 0.4;
snd_play(sndGhostSpawn,0.1,true);
ghostType = 0;
//behavior
walk = 0
myShadow = shd12;
myShadowOffset = 4;
//alarm[0] = 24/0.4//intro animation which is cool af
wkick = 0
depth = -1;
/* */
/*  */
maxSpeed = 2.1;
dmg = 1;
direction = random(360);
alarm[0] = 5 + irandom(5);
scrInitDrops(1);
alarm[1] = 90;
lifeTime = 15;
canExplode = true;