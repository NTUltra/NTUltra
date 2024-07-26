///@description AI
alarm[1] = actTime + random(actTime);
scrTarget();
if target == noone && instance_exists(Player)
	target = Player;
if instance_exists(PlayerInFakeDeath)
{
	if alarm[7] < 1
		alarm[7] = 60;
}
else if target != noone {
	var ran = random(100);
	if my_health < maxhealth
		my_health += 25;
	if firstEntry || ran > 80
	{
		firstEntry = false;
		event_user(0);
	}
	else if ran > 60
	{
		event_user(1);
		if ran > 70
		{
			walk += actTime + random(actTime);
			motion_add(gunangle,acc);
		}
	}
	else if ran > 40
	{
		event_user(2);
		if ran > 50
		{
			walk += actTime + random(actTime);
			motion_add(gunangle,acc);
		}
	}
	else if ran > 20
	{
		walk = alarm[1] + actTime;
		motion_add(gunangle,acc);
	}
}
else if random(10) < 1 {
    motion_add(random(360), acc)
    gunangle = direction
    if hspeed > 0
		right = -1
    else if hspeed < 0
		right = 1
}
