alarm[1] = actTime+random(actTime)//10 5

scrTarget()
if target > 0
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
	//REVIVE
		if instance_exists(Corpse)
		{
			crp = instance_nearest(x,y,Corpse)
			if collision_line(x,y,crp.x,crp.y,Wall,0,0) < 0
			{
				wkick = 5
				gunangle = point_direction(x,y,crp.x,crp.y)
				with crp
				{
				//instance_create(x,y,ReviveFX)
				//instance_change(Freak,true)
				var nearestFloor = instance_nearest(x,y,Floor);
				with instance_create(nearestFloor.x+16+random(16)-8,nearestFloor.y+16+random(16)-8,other.reviveArea)
				{
					owner = other.id;	
				}
				}
				snd_play(sndNecromancerRevive)
				alarm[1] = actTime*2+random(actTime*2)
			}
			else
			{
				event_user(0);	
			}
		}
		else
		{
			event_user(0);	
		}
	}
}
else
{
//DONT SEE PLAYER
if random(4) < 1
{
//REVIVE

if instance_exists(Corpse)
{
crp = instance_nearest(x,y,Corpse)
if collision_line(x,y,crp.x,crp.y,Wall,0,0) < 0
{
wkick = 5
gunangle = point_direction(x,y,crp.x,crp.y)
with crp
{
var nearestFloor = instance_nearest(x,y,Floor);
with instance_create(nearestFloor.x+16+random(16)-8,nearestFloor.y+16+random(16)-8,other.reviveArea)
{
	owner = other.id;	
}

snd_play(sndNecromancerRevive)
}
alarm[1] = 15+random(5)
}
else
{
event_user(0);	
}
}


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


