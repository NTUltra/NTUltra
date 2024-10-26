maxhealth = 10;
my_health = maxhealth;
mySize = 1
raddrop = 2
hurt_pitch_variation = 0.05;
event_inherited();
snd_hurt = sndGhostHurt;
spr_walk = sprCrownGhostSmall;
spr_idle = sprCrownGhostSmall;
spr_hurt = sprCrownGhostSmallHurt;
spr_dead = mskPickupThroughWall;
team = -1;
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
alarm[0] = 7 + irandom(5);
scrInitDrops(1);
alarm[1] = 90;
lifeTime = 15;
canExplode = true;
target = noone;
alarm[2] = 10;