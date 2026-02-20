raddrop = 10
maxhealth = 80;
mySize = 2
event_inherited()
meleedamage = 0
spr_idle = sprScrapDogIdle;
spr_fire = sprScrapDogFire;
spr_walk = sprScrapDogWalk;
spr_hurt = sprScrapDogHurt;
spr_dead = sprScrapDogDead;

snd_hurt = sndBigDogHit;
snd_dead = sndBigDogDeath;

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 30+random(90)
wkick = 0
actTime = 12;

acc = 0.8;
maxSpeed = 3;