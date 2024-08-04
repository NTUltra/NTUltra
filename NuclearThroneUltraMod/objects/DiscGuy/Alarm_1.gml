alarm[1] = actTime+random(actTime)
if (instance_exists(Player) && !Player.justAsheep) sleeping = false;;
scrTarget()
if target != noone
{
	if collision_line(x,y,target.x,target.y,Wall,0,0) < 1
	{
		if random(3) < 1+loops && point_distance(x,y,target.x,target.y)<range//minimum range
		{
			event_user(0);
		}
		else if random(9)<1 {
			direction = point_direction(x,y,target.x,target.y)+random(20)-10
			walk=actTime+random(actTime);
			alarm[1]=walk;
		}
		else if random(4)<1 {
			direction=random(360);
			walk=actTime+random(actTime*2);
			alarm[1]=walk;
		}
		else {
			walk=actTime+random(actTime);
			alarm[1]=walk+actTime+random(actTime);
		}
	}
	else if random(10)<4
	{
		direction = point_direction(x,y,target.x,target.y)+random(20)-10
		walk=10+random(20);
		alarm[1]=walk+10+random(5);
	}
	else
	{
		motion_add(random(360),1)
		walk=15+random(20);
		alarm[1]=walk;
	}
}
else if random(10)<2{
motion_add(random(360),0.5)
walk=30+random(10)
alarm[1]=walk;}

