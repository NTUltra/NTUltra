raddrop = 6
maxhealth = 8
meleedamage = 0
mySize = 1

event_inherited()

spr_idle = sprLaserBanditIdle
spr_walk = sprLaserBanditWalk
spr_hurt = sprLaserBanditHurt
spr_dead = sprLaserBanditDead

snd_hurt = sndBanditHit
snd_dead = sndBanditDie

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 20+random(90)
wkick = 0

