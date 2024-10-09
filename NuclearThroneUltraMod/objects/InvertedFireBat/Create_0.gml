raddrop = 12
maxhealth = 9
mySize = 1
event_inherited()
meleedamage = 2

fireProof = true;
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

gunangle = 0;
canDodge = false;
actTime = 10;
nukeIt = false;
loops = GetPlayerLoops();
if loops > 0
	actTime = 8;
if loops > 12
	nukeIt = true;