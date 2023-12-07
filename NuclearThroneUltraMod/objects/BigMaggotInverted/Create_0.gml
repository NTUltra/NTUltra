raddrop = 9
maxhealth = 14
meleedamage = 2
mySize = 2

if UberCont.loops>1
maxhealth=20;

event_inherited()

spr_idle = sprBigMaggotIdleInvert
spr_walk = sprBigMaggotIdleInvert
spr_hurt = sprBigMaggotHurtInvert
spr_dead = sprBigMaggotDeadInvert


snd_hurt = sndBigMaggotHit
snd_dead = sndBigMaggotDie
snd_melee = sndBigMaggotBite

//behavior
alarm[1] = 60+random(10)
rage = 0

