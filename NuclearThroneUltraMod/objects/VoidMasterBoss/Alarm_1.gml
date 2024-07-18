///@description AI
alarm[1] = actTime + random(actTime)
scrTarget()
if target != noone {
	var ran = random(100);
	if firstEntry || ran > 75
	{
		firstEntry = false;
		event_user(0);
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
