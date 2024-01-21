raddrop = 15
maxhealth = 80
meleedamage = 0
mySize = 2

event_inherited()
alarm[0] = 1;
spr_idle = sprTeaPotIdle
spr_walk = sprTeaPotWalk
spr_hurt = sprTeaPotHurt
spr_dead = sprTeaPotDead
spr_fire = sprTeaPotFire

snd_dead = sndExplosionCar;
snd_hurt = sndSnowTankHurt;

walk=0;
//behavior
alarm[1] = 60+random(60)

if instance_exists(Player)
motion_add(point_direction(Player.x,Player.y,x,y),1)

maxSpeed = 2;
actTime = 16;
reachedHalfHealth = false;
if GetPlayerLoops() > 0
	actTime -= 5;