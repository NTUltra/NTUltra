raddrop = 2
maxhealth = 9;
mySize = 1
event_inherited();
venomous = true;
immuneToTypeDamage = 1;
meleedamage = 2
spr_idle = sprSlimeIdle;
spr_walk = sprSlimeWalk;
spr_hurt = sprSlimeHurt;
spr_fire = sprSlimeFire;
spr_dead = sprSlimeDead
shd = shd12;
snd_hurt = sndHitPlant

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 30+random(90)
wkick = 0
actTime = 15;
acc = 0.8;
maxSpeed = 2;
projectileSpeed = 3;
acidAmount = 6;
droprate = 15;
shdOffset = -1;
slimeExplosion = MiniSlimeExplosion;