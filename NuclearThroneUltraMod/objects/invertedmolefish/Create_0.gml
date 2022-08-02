raddrop = 6
maxhealth = 4
meleedamage = 0
size = 1

event_inherited()

spr_idle = sprInvertedMolefishIdle
spr_walk = sprInvertedMolefishWalk
spr_hurt = sprInvertedMolefishHurt
spr_dead = sprInvertedMolefishDead


snd_hurt = sndMolefishHurt
snd_dead = sndMolefishDie

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 30+random(90)
wkick = 0

move_contact_solid(random(360),random(16))

