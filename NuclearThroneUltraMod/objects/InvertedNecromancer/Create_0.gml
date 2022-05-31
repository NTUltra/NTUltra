raddrop = 11
maxhealth = 5
meleedamage = 0
size = 1

event_inherited()

spr_idle = sprInvertedNecromancerIdle
spr_walk = sprInvertedNecromancerWalk
spr_hurt = sprInvertedNecromancerHurt
spr_dead = sprInvertedNecromancerDead

snd_hurt = sndNecromancerHurt
snd_dead = sndNecromancerDead


//behavior
walk = 0
gunangle = random(360)
alarm[1] = 30+random(90)
wkick = 0
alarm[0] = 1;