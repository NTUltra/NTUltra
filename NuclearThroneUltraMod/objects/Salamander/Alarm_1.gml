alarm[1] = actTime+random(actTime)
scrTarget()
if target != noone
{
	if point_distance(x,y,target.x,target.y) < maxRange && collision_line(x,y,target.x,target.y,Wall,0,0) < 0 and random(5) < 2
	{
		ammo = maxAmmo;
		alarm[2] = tellTime;
		alarm[1] += tellTime;
		gunangle = point_direction(x,y,target.x,target.y);
		angleleft = choose(true,false);
		if angleleft
			gunangle -= angleEnd;
		else
			gunangle += angleEnd;
		snd_play(sndSalamanderCharge)
		walk = 0;
		event_user(0);
	}
	else if random(8)<1
	{
		alarm[1] = 30+random(20)
		walk=alarm[1];
		motion_add(random(360),0.8);
	}
	else if random(4)<1
	{
		alarm[1] = 20+random(40)
		walk=alarm[1];
		motion_add(point_direction(x,y,target.x,target.y)+random(60)-30,0.8);
	}
	else if random(5)<1
	{
		walk = 5+random(25)
		alarm[1]=walk+5+random(20);
		motion_add(point_direction(x,y,target.x,target.y)+random(120)-60,0.8);
	}
	else
	{
		walk = 20+random(30)
		motion_add(point_direction(x,y,target.x,target.y)+random(30)-15,0.8);
	}

	if target.x < x
		right = -1
	else if target.x > x
		right = 1
}
else if random(10) < 1
{
	motion_add(random(360),0.4)
	walk = 10+random(10)
	alarm[1] = walk+10+random(30)
	if hspeed > 0
		right = 1
	else if hspeed < 0
		right = -1
}