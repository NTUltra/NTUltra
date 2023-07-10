raddrop = 5
maxhealth = 20;
meleedamage = 0;
mySize = 1

event_inherited()

spr_idle = sprCourtyardGuardianIdle
spr_walk = sprCourtyardGuardianIdle
spr_hurt = sprCourtyardGuardianHurt
spr_fire = sprCourtyardGuardianFire
spr_dead = sprCourtyardGuardianDead

snd_hurt = sndHitRock
snd_dead = sndFrogExplode//sndScorpionDie

//behavior
walk = 0
alarm[1] = 30+random(90)
alarm[10] = 0;
actTime = 19;

circleMode = false;
circleDistance = 80;
angle = 0;
rotationSpeed = choose(2,-2);
projectileSpeed = 4;
projectileSpeedCircle = 3;
lp = 0.118;
maxSpeed = 3;
isInverted = false;
myBat = InvertedSquareBat;