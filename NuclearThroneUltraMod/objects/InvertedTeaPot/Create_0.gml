raddrop = 30
maxhealth = 45
meleedamage = 0
size = 2

if UberCont.loops>1
maxhealth=53;

event_inherited()
alarm[0] = 1;
spr_idle = sprInvertedTeaPotIdle
spr_walk = sprInvertedTeaPotWalk
spr_hurt = sprInvertedTeaPotHurt
spr_dead = sprInvertedTeaPotDead
spr_fire = sprInvertedTeaPotFire

snd_dead = sndExplosionCar;
snd_hurt = sndSnowTankHurt;

walk=0;
//behavior
alarm[1] = 40+random(60)

if instance_exists(Player)
motion_add(point_direction(Player.x,Player.y,x,y),1)

