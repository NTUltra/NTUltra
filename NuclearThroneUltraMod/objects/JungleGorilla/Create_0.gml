raddrop = 10
maxhealth = 90
meleedamage = 4
mySize = 1

event_inherited()

spr_idle = sprJungleGorilla
spr_walk = sprJungleGorillaWalk
spr_hurt = sprJungleGorillaHurt
spr_dead = sprJungleGorillaDead

snd_hurt = sndFlyMelee
snd_dead = sndFlyDead

spr_gun = sprShotgun;
//behavior
walk = 0
gunangle = random(360)
alarm[1] = 30+random(90)
wkick = 0
actTime = 12;

acc = 0.8;
maxSpeed = 3;
gunX = -10;