raddrop = 5
maxhealth = 13//20 release is 12
meleedamage = 2
mySize = 1

event_inherited()

spr_idle = sprWolfIdle
spr_walk = sprWolfWalk
spr_hurt = sprWolfHurt
spr_dead = sprWolfDead
spr_fire = sprWolfFire


snd_dead = sndWolfDead
snd_hurt = sndWolfHurt

//behavior
alarm[1] = 60+random(40)

if instance_exists(Player)
motion_add(point_direction(Player.x,Player.y,x,y),1)

close = 0

walk = 30

hurt_pitch_variation = 0.1
getFrosty = false;
loops = GetPlayerLoops();
if loops > 3
{
	getFrosty = true;
}
actTime = 18;
if loops > 0
	actTime = 10;