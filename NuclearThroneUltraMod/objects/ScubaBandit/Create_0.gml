raddrop = 3
maxhealth = 6
meleedamage = 0
size = 1

event_inherited()
if UberCont.opt_gamemode == 34//HARD MODE
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

