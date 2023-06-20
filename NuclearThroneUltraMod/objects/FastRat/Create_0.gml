raddrop = 0
maxhealth = 4
meleedamage = 2
mySize = 1

event_inherited()

spr_idle = sprFastRatIdle
spr_walk = sprFastRatWalk
spr_hurt = sprFastRatHurt
spr_dead = sprFastRatDead


snd_hurt = sndFastRatHit
snd_dead = sndFastRatDie
snd_melee = sndFastRatMelee

//behavior
walk = 0
alarm[1] = 1+random(90)

alarm[3] = 900

snd_play(sndFastRatSpawn)

