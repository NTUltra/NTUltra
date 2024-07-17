raddrop = 0
maxhealth = 400
meleedamage = 0
mySize = 4

event_inherited()

spr_idle = sprVoidMasterIdle
spr_walk = sprVoidMasterWalk
spr_hurt = sprVoidMasterHurt
spr_dead = sprVoidMasterDead

snd_hurt = sndHitPlant
snd_dead = sndVoidEyeCreeping

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 5;
wkick = 0
actTime = 12;

acc = 0.8;
maxSpeed = 1.5;