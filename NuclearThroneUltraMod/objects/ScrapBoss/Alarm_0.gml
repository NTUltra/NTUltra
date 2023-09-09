spr_idle = spr_actual_idle

if random(3) < 1
{
	event_user(1);
}
else
{
	ammo = 0
	if random(4+instance_number(missileType)*0.5) < 1 and instance_exists(Player)
	{
		snd_play(sndBigDogMissile)
		repeat(missileAmount)
		{
			with instance_create(x,y,missileType)
			{
				motion_add(random(360),2)
				team = other.team;
			}
		}

		alarm[0] = actTime	
	}
	else
	{
		ammo = 0
		walk = (actTime*2)+random(actTime)
		motion_add(random(360),1)
		alarm[0] = walk+actTime
	}
}



