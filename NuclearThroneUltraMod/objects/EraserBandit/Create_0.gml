raddrop = 8
maxhealth = 12
meleedamage = 0
mySize = 1

event_inherited()

spr_idle = sprEraserBanditIdle
spr_walk = sprEraserBanditWalk
spr_hurt = sprEraserBanditHurt
spr_dead = sprEraserBanditDead

snd_hurt = sndBanditHit
snd_dead = sndBanditDie

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 20+random(90)
wkick = 0

