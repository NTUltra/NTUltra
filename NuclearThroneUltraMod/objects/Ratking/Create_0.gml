raddrop = 20
maxhealth = 35
meleedamage = 1
mySize = 2

event_inherited()

spr_idle = sprRatkingIdle
spr_walk = sprRatkingWalk
spr_hurt = sprRatkingHurt
spr_dead = sprRatkingDead
spr_fire = sprRatkingFire


snd_hurt = sndRatKingHit
snd_dead = sndRatKingDie

//behavior
ammo = choose(3,4,5)
walk = 0
gunangle = random(360)
alarm[1] = 1+random(90)

spawns = 0
mydir = 0

