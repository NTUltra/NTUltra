raddrop = 7
maxhealth = 4
meleedamage = 0
mySize = 1



event_inherited()
spr_idle = sprInvertedExploderIdle
spr_walk = sprInvertedExploderWalk
spr_hurt = sprInvertedExploderHurt
spr_dead = sprInvertedExploderDead
snd_dead = sndFrogExplode

//behavior
alarm[1] = 30+random(30)

if instance_exists(Player)
motion_add(point_direction(Player.x,Player.y,x,y),1)

close = 0

scrInitDrops(1);