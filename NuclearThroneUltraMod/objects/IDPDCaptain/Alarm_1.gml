///@description AI
alarm[1] = actTime + random(actTime)
if forceAnimation
	exit;
scrTarget();
if target != noone {
	if firstEntry
	{
		alarm[3] = 15;
		alarm[1] += 15;
		snd_play(snd_intro);
		firstEntry = false;
		instance_create(x,y,DramaCamera)
		exit;
	}
	var ran = random(100);
	if ran < 30
	{
		event_user(0);
		
	} else if ran < 50
	{
		if collision_line(x,y,target.x,target.y,Wall,false,false)
			event_user(3);
		else
			event_user(1);
	}
	else if ran < 70
	{
		if collision_line(x,y,target.x,target.y,Wall,false,false)
			event_user(0);
		else
			event_user(2);
	}
	else if ran < 90
	{
		event_user(3);
	}
	else
	{
		event_user(4);
	}
}
else if random(10) < 1 {
    motion_add(random(360), 0.4)
    walk = 20 + random(10)
    alarm[1] = walk + 10 + random(30)
    gunangle = direction
    if hspeed > 0
		right = 1
    else if hspeed < 0
		right = -1
}
