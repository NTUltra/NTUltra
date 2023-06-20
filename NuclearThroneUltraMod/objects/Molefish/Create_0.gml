raddrop = 3
maxhealth = 6
meleedamage = 0
mySize = 1

event_inherited()

spr_idle = sprMolefishIdle
spr_walk = sprMolefishWalk
spr_hurt = sprMolefishHurt
spr_dead = sprMolefishDead


snd_hurt = sndMolefishHurt
snd_dead = sndMolefishDie

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 30+random(90)
wkick = 0

move_contact_solid(random(360),random(16))

