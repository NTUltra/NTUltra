raddrop = 0
maxhealth = 2
mySize = 1

if UberCont.loops>1
maxhealth=4;

event_inherited()
meleedamage = 3

spr_idle = sprInvertedFastRatIdle
spr_walk = sprInvertedFastRatWalk
spr_hurt = sprInvertedFastRatHurt
spr_dead = sprInvertedFastRatDead


snd_hurt = sndFastRatHit
snd_dead = sndFastRatDie
snd_melee = sndFastRatMelee

//behavior
walk = 0
alarm[1] = 1+random(30)

alarm[3] = 900

snd_play(sndFastRatSpawn)

