raddrop = 9
maxhealth = 14//20
meleedamage = 2
size = 1

if UberCont.loops>1
maxhealth=17;

event_inherited()

spr_idle = sprInvertedWolfIdle
spr_walk = sprInvertedWolfWalk
spr_hurt = sprInvertedWolfHurt
spr_dead = sprInvertedWolfDead
spr_fire = sprInvertedWolfFire


snd_dead = sndWolfDead
snd_hurt = sndWolfHurt

//behavior
alarm[1] = 60+random(40)

if instance_exists(Player)
motion_add(point_direction(Player.x,Player.y,x,y),1)

close = 0

walk = 30

getFrosty = false;
if GetPlayerLoops() > 3
{
	getFrosty = true;
}
