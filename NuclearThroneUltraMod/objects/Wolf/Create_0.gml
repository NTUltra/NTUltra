raddrop = 6
maxhealth = 17//20
meleedamage = 2
size = 1

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
if GetPlayerLoops() > 3
{
	getFrosty = true;
}
