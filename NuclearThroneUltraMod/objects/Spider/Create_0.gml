raddrop = 6
maxhealth = 28//18
mySize = 1

event_inherited()
meleedamage = 4

spr_idle = sprSpiderIdle
spr_walk = sprSpiderWalk
spr_hurt = sprSpiderHurt
spr_dead = sprSpiderDead

snd_hurt = sndHitRock

//behavior
walk = 0
alarm[1] = 30+random(90)
maxSpeed = 3.7

if instance_exists(Player)
{
if Player.loops>0
maxSpeed = 4.9
}

