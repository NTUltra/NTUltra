raddrop = 14
maxhealth = 34//38//50
meleedamage = 4
mySize = 1

if UberCont.loops>1
maxhealth=35;

event_inherited()
fireProof = true;
spr_idle = sprInvertedLavaBallIdle
spr_walk = sprInvertedLavaBallWalk
spr_hurt = sprInvertedLavaBallHurt
spr_dead = sprInvertedLavaBallDead
spr_fire = sprInvertedLavaBallFire


snd_dead = sndWallBreak;
snd_hurt = sndHitRock;

walk=0;
//behavior
alarm[1] = 10+random(10)

if instance_exists(Player)
motion_add(point_direction(Player.x,Player.y,x,y),1)

