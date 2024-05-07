raddrop = 2
maxhealth = 2000;
meleedamage = 0
mySize = 1

event_inherited()

spr_idle = sprLastIdle
spr_walk = sprLastIdle
spr_hurt = sprLastHurt
spr_dead = sprLastDeath

snd_hurt = sndLastHurt
snd_dead = sndLastDeath

//behavior
walk = 0
gunangle = random(360);
alarm[1] = 1;
wkick = 0
actTime = 12;

acc = 0.8;
maxSpeed = 3;