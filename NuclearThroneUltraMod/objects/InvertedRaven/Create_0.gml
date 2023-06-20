raddrop = 5
maxhealth = 7
meleedamage = 0
mySize = 1

if UberCont.loops>1
maxhealth=9;

event_inherited()

spr_idle = sprInvertedRavenIdle
spr_walk = sprInvertedRavenWalk
spr_hurt = sprInvertedRavenHurt
spr_dead = sprInvertedRavenDead


snd_hurt = sndRavenHit
snd_dead = sndRavenDie

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 30+random(90)
wkick = 0
ammo = 3
z = 0
nofly = 30

