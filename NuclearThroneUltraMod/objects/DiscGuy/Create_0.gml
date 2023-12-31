raddrop = 4
maxhealth = 12
meleedamage = 3
mySize = 1

event_inherited()

spr_idle = sprDiscGuyIdle
spr_walk = sprDiscGuyWalk
spr_hurt = sprDiscGuyHurt
spr_dead = sprDiscGuyDead
spr_fire = sprDiscGuyFire

snd_dead = sndWolfDead;
snd_hurt = sndSnowTankHurt;

walk=0;
//behavior
alarm[1] = 30+random(30)
