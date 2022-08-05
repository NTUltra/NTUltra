raddrop = 6
maxhealth = 22//20
meleedamage = 2
size = 1

event_inherited()

spr_idle = sprSquareBatIdle
spr_walk = sprSquareBatIdle
spr_hurt = sprSquareBatHurt
spr_dead = sprSquareBatDead

snd_hurt = sndHitPlant
snd_dead = sndFrogExplode
snd_melee = sndGoldScorpionMelee;

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
