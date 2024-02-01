raddrop = 5
maxhealth = 5
meleedamage = 0
mySize = 1



event_inherited()
spr_idle = sprExploderIdle
spr_walk = sprExploderWalk
spr_hurt = sprExploderHurt
spr_dead = sprExploderDead
snd_dead = sndFrogExplode

//behavior
alarm[1] = 40+random(40)

if instance_exists(Player)
motion_add(point_direction(Player.x,Player.y,x,y)+180,1)

close = 0

scrInitDrops(1);