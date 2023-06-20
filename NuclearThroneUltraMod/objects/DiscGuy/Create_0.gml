raddrop = 5
maxhealth = 14
meleedamage = 1
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

if instance_exists(Player)
motion_add(point_direction(Player.x,Player.y,x,y),1)

