raddrop = 5
maxhealth = 5
mySize = 1

event_inherited()
meleedamage = 2

spr_idle = sprBoneFishIdle
spr_walk = sprBoneFishWalk
spr_hurt = sprBoneFishHurt
spr_dead = sprBoneFishDead

snd_hurt = sndHitFlesh

//behavior
walk = 0
alarm[1] = 15+random(60)
maxSpeed = 3.9
actTime = 19;
loops = GetPlayerLoops();
if loops > 0
{
	maxSpeed = 5
	actTime = 8;
}

