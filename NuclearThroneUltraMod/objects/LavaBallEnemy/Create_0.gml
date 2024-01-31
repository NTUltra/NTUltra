raddrop = 9
maxhealth = 12//50
meleedamage = 6
mySize = 1

event_inherited()
fireProof = true;
spr_idle = sprLavaBallIdle
spr_walk = sprLavaBallWalk
spr_hurt = sprLavaBallHurt
spr_dead = sprLavaBallDead
spr_fire = sprLavaBallFire


snd_dead = sndWallBreak;
snd_hurt = sndHitRock;

walk=0;
//behavior
alarm[1] = 30+random(60)

alarm[3] = 1;
projectileSpeed = 2;
if GetPlayerLoops() > 0
projectileSpeed += 0.5;