raddrop = 6
maxhealth = 14
meleedamage = 0
mySize = 1

event_inherited()

spr_idle = sprMolesargeIdle
spr_walk = sprMolesargeWalk
spr_hurt = sprMolesargeHurt
spr_dead = sprMolesargeDead

snd_hurt = sndMolesargeHurt
snd_dead = sndMolesargeDie

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 30+random(90)
wkick = 0

move_contact_solid(random(360),random(16))

