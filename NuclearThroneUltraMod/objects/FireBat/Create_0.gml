raddrop = 8
maxhealth = 12//18
mySize = 1

event_inherited();
meleedamage = 2

fireProof = true;
spr_idle = sprFireBatIdle
spr_walk = sprFireBatIdle
spr_hurt = sprFireBatHurt
spr_dead = sprFireBatDead
spr_fire = sprFireBatFire

snd_melee = sndGoldScorpionMelee;
snd_dead = sndFrogExplode

walk=0;
//behavior
alarm[1] = 10+random(10)

if instance_exists(Player)
motion_add(point_direction(Player.x,Player.y,x,y),1)

actTime = 15;
nukeIt = false;
loops = GetPlayerLoops();
if loops > 0
	actTime = 11;
if loops > 12
	nukeIt = true;
