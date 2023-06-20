raddrop = 9
maxhealth = 9
meleedamage = 0
mySize = 1

event_inherited()

spr_idle = sprInvertedMolesargeIdle
spr_walk = sprInvertedMolesargeWalk
spr_hurt = sprInvertedMolesargeHurt
spr_dead = sprInvertedMolesargeDead

snd_hurt = sndMolesargeHurt
snd_dead = sndMolesargeDie

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 30+random(90)
wkick = 0

move_contact_solid(random(360),random(16))

