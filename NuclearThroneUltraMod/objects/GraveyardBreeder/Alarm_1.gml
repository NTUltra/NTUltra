alarm[1] = actTime+random(actTime)
scrTarget()
if target > 0
{
	if collision_line(x,y,target.x,target.y,Wall,0,0) < 0 and random(2) < 1 && point_distance(target.x,target.y,x,y)<160
	{
		ammo = maxAmmo
		maxAmmo = max(4,maxAmmo-1);
		alarm[2] = 1
		gunangle = point_direction(x,y,target.x,target.y);
		alarm[1] = max(maxAmmo*2,actTime*2+random(actTime));
		snd_play(sndRatKingVomit)
		speed = vomitSpeed;
		direction = gunangle + 180;
		walk = alarm[1]*0.5;
	}
	else
	{
		motion_add(random(360),0.4)
		walk = actTime+random(actTime)
		alarm[1] = walk+actTime+random(actTime)
		if hspeed > 0
			right = 1
		else if hspeed < 0
			right = -1
	}

	if target.x < x
		right = -1
	else if target.x > x
		right = 1
}
else if random(10) < 1
{
	motion_add(random(360),0.4)
	walk = actTime+random(actTime)
	alarm[1] = walk+actTime+random(actTime)
	if hspeed > 0
		right = 1
	else if hspeed < 0
		right = -1
}

