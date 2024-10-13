raddrop = 11
maxhealth = 4
meleedamage = 0
mySize = 1

event_inherited()

crp = noone;
spr_idle = sprInvertedNecromancerIdle
spr_walk = sprInvertedNecromancerWalk
spr_hurt = sprInvertedNecromancerHurt
spr_dead = sprInvertedNecromancerDead

snd_hurt = sndNecromancerHurt
snd_dead = sndNecromancerDead


//behavior
range = 340;
loops = GetPlayerLoops();

actTime = 13;
if loops > 0
	actTime = 8;
if loops > 1
	range += 50;
if loops > 2
	range += 50;
if loops > 3
	range += 50;

walk = 0
gunangle = random(360)
alarm[1] = 30+random(90)
wkick = 0
alarm[0] = 1;