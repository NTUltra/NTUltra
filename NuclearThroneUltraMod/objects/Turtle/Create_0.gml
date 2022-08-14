raddrop = 12
maxhealth = 15
meleedamage = 0
size = 1

event_inherited()
friction += 0.01;
spr_idle = sprTurtleIdle
spr_walk = sprTurtleIdle
spr_hurt = sprTurtleHurt
spr_dead = sprTurtleDead
spr_fire = sprTurtleFire


//behavior
walk = 0
alarm[1] = 30+random(90)

speed = 0;