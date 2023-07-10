raddrop = 100
maxhealth = 400
meleedamage = 0
mySize = 3

event_inherited()

spr_idle = sprCrownGluttonBossIdle
spr_walk = sprCrownGluttonBossIdle
spr_hurt = sprCrownGluttonBossHurt
spr_dead = sprCrownGluttonBossDead

snd_hurt = sndHitRock
snd_dead = sndWallBreakLabs

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 30+random(90)
wkick = 0
actTime = 12;

acc = 0.8;
maxSpeed = 3;
instance_create(x,y,BigWallBreak);
alarm[2] = 3;
alarm[3] = 2;
scrAddDrops(1);