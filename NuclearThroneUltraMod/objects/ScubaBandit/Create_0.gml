raddrop = 3
maxhealth = 6
meleedamage = 0
mySize = 1

event_inherited()
if scrIsHardMode() && random(4) < 1//HARD MODE
{
	instance_destroy(id,false);
	instance_create(x,y,UltraBandit);
}

spr_idle = sprScubaBanditIdle
spr_walk = sprScubaBanditWalk
spr_hurt = sprScubaBanditHurt
spr_dead = sprScubaBanditDead

snd_hurt = sndBanditHit
snd_dead = sndBanditDie

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 30+random(90)
wkick = 0
actTime = 10;
if GetPlayerLoops > 0
	actTime = 8;
acc = 0.8;
maxSpeed = 3;