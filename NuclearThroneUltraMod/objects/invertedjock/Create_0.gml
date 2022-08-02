raddrop = 14
maxhealth = 18
meleedamage = 3
size = 2

event_inherited()

spr_idle = sprInvertedJockIdle
spr_walk = sprInvertedJockWalk
spr_hurt = sprInvertedJockHurt
spr_dead = sprInvertedJockDead
spr_fire = sprInvertedJockFire

snd_hurt = sndJockHurt
snd_dead = sndJockDie

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 30+random(90)
wkick = 0
ammo = 5

