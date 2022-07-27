raddrop = 10
maxhealth = 5
meleedamage = 2
size = 1

event_inherited()

spr_idle = sprBoneFishIdle
spr_walk = sprBoneFishWalk
spr_hurt = sprBoneFishHurt
spr_dead = sprBoneFishDead

snd_hurt = sndHitFlesh

//behavior
walk = 0
alarm[1] = 15+random(60)
maxspeed = 4
actTime = 18;
if instance_exists(Player)
{
	if Player.loops>0
	{
		maxspeed = 5
		actTime = 8;
	}
}

