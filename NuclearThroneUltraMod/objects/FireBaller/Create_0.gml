raddrop = 5
maxhealth = 25
meleedamage = 0
mySize = 1

event_inherited()
spr_idle = sprFireBallerIdle
spr_walk = sprFireBallerIdle
spr_hurt = sprFireBallerHurt
spr_dead = sprFireBallerDead
spr_fire = sprFireBallerFire


snd_dead = sndFireballerDie
snd_hurt = sndFireballerHurt

//behavior
alarm[1] = 30+random(60)
instance_create(x,y,BigWallBreak);
if instance_exists(Player)
motion_add(point_direction(Player.x,Player.y,x,y),1)

