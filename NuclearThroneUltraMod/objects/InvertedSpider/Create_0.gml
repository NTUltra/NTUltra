raddrop = 10
maxhealth = 24//12
mySize = 1

event_inherited()
meleedamage = 3

spr_idle = sprInvertedSpiderIdle
spr_walk = sprInvertedSpiderWalk
spr_hurt = sprInvertedSpiderHurt
spr_dead = sprInvertedSpiderDead

snd_hurt = sndHitRock

//behavior
walk = 0
alarm[1] = 30+random(90)
maxSpeed = 4//3

if instance_exists(Player)
{
if Player.loops>0
maxSpeed = 5.2
}

dodge=10;

canDodge = false;