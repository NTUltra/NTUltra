raddrop = 12
maxhealth = 30
meleedamage = 0
mySize = 1


event_inherited()

spr_idle = sprBuffGatorIdle
spr_walk = sprBuffGatorWalk
spr_hurt = sprBuffGatorHurt
spr_dead = sprBuffGatorDead


snd_hurt = sndBuffGatorHit
snd_dead = sndBuffGatorDie

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 30+random(90)

maxSpeed = 2.8;
wkick = 0
actTime = 10;
tellTime = 12;
range = 132;
loops = GetPlayerLoops();
pspeed = 8 + min(loops,2);
if loops > 0
{
	actTime = 8;
	tellTime = 10;
}