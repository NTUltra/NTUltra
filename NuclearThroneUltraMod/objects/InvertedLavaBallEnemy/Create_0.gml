raddrop = 12
maxhealth = 9//32//38//50
mySize = 1

event_inherited();
meleedamage = 6

fireProof = true;
spr_idle = sprInvertedLavaBallIdle
spr_walk = sprInvertedLavaBallWalk
spr_hurt = sprInvertedLavaBallHurt
spr_dead = sprInvertedLavaBallDead
spr_fire = sprInvertedLavaBallFire

maxSpeed = 2;

snd_dead = sndWallBreak;
snd_hurt = sndHitRock;

walk=0;
//behavior
alarm[1] = 30+random(60)

alarm[3] = 1;

if (instance_exists(Player) && !Player.justAsheep) sleeping = false;;
if instance_exists(Player) && Player.skill_got[29]
	sleeping = true;