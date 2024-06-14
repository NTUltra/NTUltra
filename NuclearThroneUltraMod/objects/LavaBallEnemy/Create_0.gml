raddrop = 9
maxhealth = 12//50
mySize = 1

event_inherited()
meleedamage = 6

fireProof = true;
spr_idle = sprLavaBallIdle
spr_walk = sprLavaBallWalk
spr_hurt = sprLavaBallHurt
spr_dead = sprLavaBallDead
spr_fire = sprLavaBallFire

maxSpeed = 1.75;

snd_dead = sndWallBreak;
snd_hurt = sndHitRock;

walk=0;
//behavior
alarm[1] = 30+random(60)

alarm[3] = 1;
projectileSpeed = 1.8;
if GetPlayerLoops() > 0
projectileSpeed += 0.6;

sleeping = false;
if instance_exists(Player) && Player.skill_got[29]
	sleeping = true;