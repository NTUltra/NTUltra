raddrop = 8
maxhealth = 25
meleedamage = 0
mySize = 1

event_inherited()

spr_idle = sprSuperFrogIdle
spr_walk = sprSuperFrogWalk
spr_hurt = sprSuperFrogHurt
spr_dead = sprSuperFrogDead


snd_dead = sndSuperFrogExplode

//behavior
alarm[1] = 40+random(40)

if instance_exists(Player)
motion_add(point_direction(Player.x,Player.y,x,y),1)

close = 0

alarm[2] = 5


repeat(10)
instance_create(x,y,ToxicGas)

scrInitDrops(1);