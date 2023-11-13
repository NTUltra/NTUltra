/// @description AI
alarm[1] = actTime+random(actTime)//10 5

scrTarget()
if target != noone
{
//PLAYER EXISTS
if collision_line(x,y,target.x,target.y,Wall,0,0) < 0 and random(5) < 4
{//SEE PLAYER & FLEE
	if random(3) < 2 && point_distance(x,y,target.x,target.y) < 200
	{
		motion_add(point_direction(target.x,target.y,x,y)+random(80)-40,0.4)
		walk = actTime*3+random(10)
		alarm[1] = walk
		gunangle = direction
		if hspeed > 0
			right = 1
		else if hspeed < 0
			right = -1
	}
	else
	{
		event_user(1);
	}
}
else
{
//DONT SEE PLAYER
if random(4) < 1
{
	event_user(1);
	alarm[1] += actTime;
}
else if random(2) < 1
{
//WALK RANDOMLY
motion_add(random(360),0.4)
walk = 20+random(10)
alarm[1] = walk+10+random(30)
gunangle = direction
if hspeed > 0
right = 1
else if hspeed < 0
right = -1
}
else
{
	event_user(0);	
}
}
}
else if random(10) < 1
{
//PLAYER IS NOT THERE
motion_add(random(360),0.4)
walk = 20+random(10)
alarm[1] = walk+10+random(30)
gunangle = direction
if hspeed > 0
right = 1
else if hspeed < 0
right = -1
}


