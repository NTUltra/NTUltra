raddrop = 9
maxhealth = 22
meleedamage = 1
mySize = 1

event_inherited()

spr_idle = sprBigMaggotIdle
spr_walk = sprBigMaggotIdle
spr_hurt = sprBigMaggotHurt
spr_dead = sprBigMaggotDead



snd_hurt = sndBigMaggotHit
snd_dead = sndBigMaggotDie
snd_melee = sndBigMaggotBite

//behavior
alarm[1] = 10+random(10)
rage = 0

