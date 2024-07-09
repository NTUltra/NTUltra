raddrop = 6
maxhealth = 9;
meleedamage = 0;
mySize = 1

event_inherited()

spr_idle = sprCourtyardGuardianIdle
spr_walk = sprCourtyardGuardianIdle
spr_hurt = sprCourtyardGuardianHurt
spr_fire = sprCourtyardGuardianFire
spr_dead = sprCourtyardGuardianDead

snd_hurt = sndHitRock
snd_dead = sndWallBreak//sndScorpionDie

//behavior
walk = 0
alarm[1] = 30+random(90)
alarm[10] = 0;
actTime = 16;
acc = 1;
projectileSpeed = 2.8;
maxSpeed = 4;

maxammo = 3;
ammo = maxammo;
angleStep = 360/maxammo;
angle = 0;
distance = 132;
originX = x;
originY = y;