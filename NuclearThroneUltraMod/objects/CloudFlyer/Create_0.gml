raddrop = 4
maxhealth = 18
meleedamage = 1
mySize = 1

event_inherited()
venomous = true;
spr_idle = sprCloudFlyer
spr_walk = sprCloudFlyer
spr_hurt = sprCloudFlyerHurt
spr_dead = sprCloudFlyerHurt
spr_fire = sprCloudFlyerFire;
snd_hurt = sndHitPlant
snd_dead = sndFrogExplode

//behavior
walk = 0
alarm[1] = 30+random(90);
gunangle = 0;
wkick = 0
actTime = 15;
minRange = 64;
maxRange = 340;
startingPointDistance = 200;
attackRange = 240;
acc = 0.8;
maxSpeed = 3.2;