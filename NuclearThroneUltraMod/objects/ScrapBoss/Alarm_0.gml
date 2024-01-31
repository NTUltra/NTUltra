spr_idle = spr_actual_idle

if random(3) < 1
{
	event_user(1);
}
else
{
	ammo = 0
	if random(4+instance_number(missileType)*0.75) < 1 and instance_exists(Player)
	{
		event_user(3)
	}
	else
	{
		ammo = 0
		walk = (actTime*2)+random(actTime)
		motion_add(random(360),1)
		alarm[0] = walk+actTime
	}
}



