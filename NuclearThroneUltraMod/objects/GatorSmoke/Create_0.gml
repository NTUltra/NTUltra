raddrop = 8
maxhealth = 12
meleedamage = 0
size = 1


event_inherited()

spr_idle = sprGatorIdleSmoke
spr_walk = sprGatorWalk
spr_hurt = sprGatorHurt
spr_dead = sprGatorDead

MorphMe=true;
//behavior
walk = 0
gunangle = random(360)
alarm[1] = 30+random(90)
wkick = 0
timer = 0

image_speed = 0.4
friction = 0.4
right = choose(1,-1)
my_health = maxhealth

EnemyHealthAdjustments();


team = 1
target = -1

snd_hurt = sndGatorHit
snd_dead = sndGatorDie

