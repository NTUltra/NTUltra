raddrop = 9
maxhealth = 6
meleedamage = 2
mySize = 1

if UberCont.loops>1
maxhealth=11;

event_inherited()

spr_idle = sprInvertedDiscGuyIdle
spr_walk = sprInvertedDiscGuyWalk
spr_hurt = sprInvertedDiscGuyHurt
spr_dead = sprInvertedDiscGuyDead
spr_fire = sprInvertedDiscGuyFire

snd_dead = sndWolfDead;
snd_hurt = sndSnowTankHurt;

walk=0;
//behavior
alarm[1] = 30+random(30)

if instance_exists(Player)
motion_add(point_direction(Player.x,Player.y,x,y),1)

