raddrop = 8
maxhealth = 12
meleedamage = 0
size = 1


event_inherited()

spr_idle = sprGatorIdle
spr_walk = sprGatorWalk
spr_hurt = sprGatorHurt
spr_dead = sprGatorDead


snd_hurt = sndGatorHit
snd_dead = sndGatorDie

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 30+random(90)

if instance_exists(Player)
{
if Player.loops>0
alarm[1] -= 10;
}

wkick = 0

