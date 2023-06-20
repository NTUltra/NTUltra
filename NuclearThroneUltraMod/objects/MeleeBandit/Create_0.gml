raddrop = 8
maxhealth = 7
meleedamage = 0
mySize = 1
//bloodempty=0;

event_inherited()
existTime = 0;
spr_idle = sprMeleeIdle
spr_walk = sprMeleeWalk
spr_hurt = sprMeleeHurt
spr_dead = sprMeleeDead



snd_hurt = sndAssassinHit
snd_dead = sndAssassinDie

snd_play(sndAssassinGetUp)

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 30+random(30)
wepangle = choose(-140,140)
wepflip = 1

dodge=0;

