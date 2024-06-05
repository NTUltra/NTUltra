raddrop = 2
maxhealth = 600
meleedamage = 3
mySize = 1

event_inherited()
venomous = true;
spr_idle = sprCloudBoss
spr_walk = sprCloudBoss
spr_hurt = sprCloudBossHurt;
spr_dead = sprCloudBossHurt;

snd_hurt = sndHitPlant
snd_dead = sndFrogExplode

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 30+random(90)
wkick = 0
actTime = 12;

acc = 0.8;
maxSpeed = 4;
instance_create(x,y,DramaCamera);