raddrop = 10
maxhealth = 40//50
meleedamage = 4
size = 1

event_inherited()

spr_idle = sprLavaBallIdle
spr_walk = sprLavaBallWalk
spr_hurt = sprLavaBallHurt
spr_dead = sprLavaBallDead
spr_fire = sprLavaBallFire


snd_dead = sndWallBreak;
snd_hurt = sndHitRock;

walk=0;
//behavior
alarm[1] = 10+random(10)

if instance_exists(Player)
motion_add(point_direction(Player.x,Player.y,x,y),1)

