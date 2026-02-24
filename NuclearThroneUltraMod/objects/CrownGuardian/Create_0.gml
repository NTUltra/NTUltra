raddrop = 6
maxhealth = 50
meleedamage = 0
mySize = 2

spr_idle = sprGuardianActivate
spr_walk = sprGuardianIdle
spr_hurt = sprGuardianHurt
spr_dead = sprGuardianDead
spr_fire = sprGuardianFire

event_inherited()

friction = 1

existTime = 25;
snd_hurt = sndHitRock
snd_dead = sndScorpionDie
snd_melee = sndScorpionMelee

//behavior
walk = 0
alarm[1] = 5
alarm[3] = 10;
gunangle = random(360)
candeflect = 0
canfire = 1
indexTracker = image_index;
loops = GetPlayerLoops();
instance_create(x,y,WallBreakWallOnly);