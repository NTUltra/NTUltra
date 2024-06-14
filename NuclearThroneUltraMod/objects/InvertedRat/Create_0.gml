raddrop = 8
maxhealth = 5
mySize = 1

if UberCont.loops>1
maxhealth=7;

event_inherited()
meleedamage = 3

spr_idle = sprInvertedRatIdle
spr_walk = sprInvertedRatWalk
spr_hurt = sprInvertedRatHurt
spr_dead = sprInvertedRatDead


snd_hurt = sndRatHit
snd_dead = sndRatDie
snd_melee = sndRatMelee

//behavior
walk = 0
alarm[1] = 30+random(90)

