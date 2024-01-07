raddrop = 12
maxhealth = 25
meleedamage = 1
mySize = 2



event_inherited()
fireProof = true;
spr_idle = sprSalamanderIdle
spr_walk = sprSalamanderWalk
spr_hurt = sprSalamanderHurt
spr_dead = sprSalamanderDead
spr_fire = sprSalamanderFire

snd_hurt = sndSalamanderHurt
snd_dead = sndSalamanderDead
snd_melee = sndSalamanderFire

//behavior
maxRange = 310;
actTime = 20;
ammo = 10
acc = 0.6;
maxSpeed = 2;
walk = 0
gunangle = random(360)
angleleft=false;
maxAmmo = 60;
angleEnd = 30;
angleStep = 2;
alarm[1] = 30+random(90)
tellTime = 10;
alarm[3] = 10;