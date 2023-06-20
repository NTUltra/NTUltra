raddrop = 25
maxhealth = 40
meleedamage = 1
mySize = 1

if UberCont.loops>1
maxhealth=55;

event_inherited()

spr_idle = sprInvertedSuperFireBallerIdle
spr_walk = sprInvertedSuperFireBallerIdle
spr_hurt = sprInvertedSuperFireBallerHurt
spr_dead = sprInvertedSuperFireBallerDead
spr_fire = sprInvertedSuperFireBallerFire

snd_hurt = sndSuperFireballerHurt
snd_dead = sndSuperFireballerDie

//behavior
alarm[1] = 30+random(60)

if instance_exists(Player)
motion_add(point_direction(Player.x,Player.y,x,y),1)

