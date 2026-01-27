raddrop = 9
maxhealth = 11//20
mySize = 1

if UberCont.loops>1
maxhealth=17;

event_inherited()
meleedamage = 3
droprate = 0;
if instance_exists(Player) && Player.skill_got[4]
{
	droprate = 10;
	scrInitDrops(1);
}
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
loops = GetPlayerLoops();
if loops > 3
{
	getFrosty = true;
}
actTime = 14;
if loops > 0
	actTime = 7;