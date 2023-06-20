raddrop = 12
maxhealth = 8
meleedamage = 0
mySize = 1

if UberCont.loops>1
maxhealth=11;


event_inherited()

spr_idle = sprInvertedGatorIdle
spr_walk = sprInvertedGatorWalk
spr_hurt = sprInvertedGatorHurt
spr_dead = sprInvertedGatorDead


snd_hurt = sndGatorHit
snd_dead = sndGatorDie

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 30+random(30)

actTime = 6;
loops = GetPlayerLoops();
if loops > 0
{
	actTime = 4;
	alarm[1] -= 10;
}



wkick = 0

