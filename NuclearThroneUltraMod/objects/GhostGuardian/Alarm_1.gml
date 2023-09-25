alarm[1] = actTime+random(actTime)
scrTarget()
if target != noone
{
	//GOT TARGET
	var dis = point_distance(x,y,target.x,target.y);
	if dis < maxRange
	{
		//CAN SEE
		//direction = point_direction(x,y,target.x,target.y)+random(60)-30
		goForIt = true;
	}
	else
	{
		
		if (dis > 370)
		{
			direction = point_direction(x,y,target.x,target.y);
			speed = 3;
		}
		else if random(3) < 1 && instance_exists(Floor) && !place_meeting(x,y,Floor)
		{
			goForIt = false;
			var nearestFloor = instance_nearest(x,y,Floor)
			direction = point_direction(x,y,nearestFloor.x,nearestFloor.y);
			speed = 2;
			
		}	
		else if random(10) < 2
		{
			//CANT SEE
			direction = random(360)
			if goForIt
				speed *= 0.5;
			goForIt = false;
		}
		else
		{
			motion_add(point_direction(x,y,target.x,target.y),3);
		}
	}
}
else
{
	direction = random(360);
	alarm[1] +=5;
}
