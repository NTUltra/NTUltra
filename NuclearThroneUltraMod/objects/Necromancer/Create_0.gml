raddrop = 8
maxhealth = 6
meleedamage = 0
mySize = 1

event_inherited()

spr_idle = sprNecromancerIdle
spr_walk = sprNecromancerWalk
spr_hurt = sprNecromancerHurt
spr_dead = sprNecromancerDead

snd_hurt = sndNecromancerHurt
snd_dead = sndNecromancerDead


//behavior
walk = 0
gunangle = random(360)
alarm[1] = 30+random(90)
wkick = 0

actTime = 14;
loops = GetPlayerLoops();
range = 300;
if loops > 0
	actTime = 8;
if loops > 1
	range += 50;
if loops > 2
	range += 50;
if loops > 3
	range += 50;
acc = 0.8;
maxSpeed = 3;
reviveArea = ReviveArea;
alarm[0] = 1;