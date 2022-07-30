raddrop = 12
maxhealth = 11
meleedamage = 2
size = 1

if UberCont.loops>1
maxhealth=16;

event_inherited()
spr_idle = sprInvertedFireBatIdle
spr_walk = sprInvertedFireBatIdle
spr_hurt = sprInvertedFireBatHurt
spr_dead = sprInvertedFireBatDead
spr_fire = sprInvertedFireBatFire

snd_melee = sndGoldScorpionMelee;
snd_dead = sndFrogExplode

walk=0;
dodge=0;
//behavior
alarm[1] = 10+random(10)

if instance_exists(Player)
motion_add(point_direction(Player.x,Player.y,x,y),1)

nukeIt = false;
if GetPlayerLoops() > 12
	nukeIt = true;
