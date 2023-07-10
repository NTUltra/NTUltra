raddrop = 30
maxhealth = 40
meleedamage = 0
mySize = 2

spr_idle = sprGuardianActivate
spr_walk = sprGuardianIdle
spr_hurt = sprGuardianHurt
spr_dead = sprGuardianDead
spr_fire = sprGuardianFire

event_inherited()

friction = 1


snd_hurt = sndHitRock
snd_dead = sndScorpionDie
snd_melee = sndScorpionMelee

//behavior
walk = 0
alarm[1] = 25
alarm[3] = 10;
gunangle = random(360)
candeflect = 0
canfire = 1

instance_create(x,y,WallBreak);