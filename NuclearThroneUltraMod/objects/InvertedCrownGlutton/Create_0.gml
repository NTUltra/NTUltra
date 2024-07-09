raddrop = 50
maxhealth = 400
scrBossHealthBuff();
meleedamage = 0
mySize = 3

event_inherited();
alarm[10] = 0;

spr_idle = sprInvertedCrownGluttonBossIdle
spr_walk = sprInvertedCrownGluttonBossIdle
spr_hurt = sprInvertedCrownGluttonBossHurt
spr_dead = sprInvertedCrownGluttonBossDead
spr_fire = sprInvertedCrownGluttonBossFire

snd_hurt = sndHitRock
snd_dead = sndCrownGluttonDead

//behavior
alarm[1] = 60;
actTime = 10;

acc = 3;
maxSpeed = 4;
speedBuff = -1;
projectileSpeed = 3;
originX = x;
originY = y;
instance_create(x,y,BigWallBreak);
alarm[2] = 3;
alarm[3] = 2;
alarm[5] = 5;
scrAddDrops(1);
reachedHalfway = false;
reached75 = false;
maxammo = 6;
angleStep = 360/maxammo;
distance = 128;
ammo = maxammo;
chance = 13;
tempchance = 0;
if object_index == InvertedCrownGlutton
crowns = [EnemyCrownOfBlood,EnemyCrownOfEnergy,EnemyCrownOfSloth,EnemyCrownOfHaste,EnemyCrownOfEcho,EnemyCrownOfFreedom,EnemyCrownOfDisco];