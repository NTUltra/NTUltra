raddrop = 12
maxhealth = 25
meleedamage = 1
mySize = 2



event_inherited()
spr_idle = sprSalamanderIdle
spr_walk = sprSalamanderWalk
spr_hurt = sprSalamanderHurt
spr_dead = sprSalamanderDead
spr_fire = sprSalamanderFire

snd_hurt = sndSalamanderHurt
snd_dead = sndSalamanderDead
snd_melee = sndSalamanderFire

//behavior
ammo = 10
walk = 0
gunangle = random(360)
angleleft=false;
alarm[1] = 30+random(90)

alarm[3] = 10;