raddrop = 30
maxhealth = 28
mySize = 2

if UberCont.loops>1
maxhealth=34;

event_inherited()
meleedamage = 2

spr_idle = sprInvertedRatkingIdle
spr_walk = sprInvertedRatkingWalk
spr_hurt = sprInvertedRatkingHurt
spr_dead = sprInvertedRatkingDead
spr_fire = sprInvertedRatkingFire


snd_hurt = sndRatKingHit
snd_dead = sndRatKingDie

//behavior
ammo = choose(4,5,6,7)
walk = 0
gunangle = random(360)
alarm[1] = 1+random(60)

spawns = 0
mydir = 0

