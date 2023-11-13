alarm[1] = actTime+random(actTime)
if sprite_index != spr_hurt
sprite_index = spr_idle
scrTarget()
if !reachedHalfHealth && my_health <= maxhealth
{
	reachedHalfHealth = true;
	actTime = max(2,actTime-4);
	maxSpeed ++;
}
if target != noone
{
var dis = point_distance(target.x,target.y,x,y);
if ((!collision_line(x,y,target.x,target.y,Wall,0,0) || random(5) < 1) && dis < 300)
{
	if random(4) < 1 && dis < 250
	{
		event_user(0);
		alarm[1] += 15;
		with TeaPot
		{
			alarm[1] += 15 + (actTime * 2);
		}
	}
	else if random(3) < 1 {
		event_user(1);
		alarm[1] += actTime;
	}
	else if random(4)<1{
		walk=actTime+random(actTime);
		alarm[1]=walk;
		direction = point_direction(x,y,target.x,target.y)+random(20)-10
	}
	
	else{
		speed=0;
		walk=20+random(30);
		alarm[1]=walk+15+random(20);
	}
}//wall in between\/
else if random(7)<1{
	walk=actTime+random(10);
	alarm[1]=walk;
	direction = point_direction(x,y,target.x,target.y)+random(20)-10
}
else if dis < 200 && random(5)<1{
	event_user(0);
	alarm[1] += 15;
	with TeaPot
	{
		alarm[1] += 15 + (actTime * 2);	
	}
}
else if random(5)<1{
walk=actTime+random(12);
alarm[1]=walk;
direction = random(360)}
else{
walk=actTime+random(12);
alarm[1]=walk+15+random(30);
direction = random(360)}
}//no target\/
else if random(10)<2{
motion_add(random(360),0.5)
walk=alarm[1]
}