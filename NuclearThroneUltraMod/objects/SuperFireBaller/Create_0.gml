raddrop = 15
maxhealth = 60
mySize = 1

event_inherited()
meleedamage = 1

spr_idle = sprSuperFireBallerIdle
spr_walk = sprSuperFireBallerIdle
spr_hurt = sprSuperFireBallerHurt
spr_dead = sprSuperFireBallerDead
spr_fire = sprSuperFireBallerFire


snd_dead = sndSuperFireballerDie
snd_hurt = sndSuperFireballerHurt

//behavior
alarm[1] = 30+random(60)

instance_create(x,y,BigWallBreak);
if instance_exists(Player)
motion_add(point_direction(Player.x,Player.y,x,y),1)

