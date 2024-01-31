raddrop = 12
maxhealth = 9//32//38//50
meleedamage = 6
mySize = 1

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
alarm[1] = 30+random(60)

alarm[3] = 1;

