scrTarget()
alarm[1] = actTime+random(actTime);

if target > 0
{
	if collision_line(x,y,target.x,target.y,Wall,0,0) < 0
	{
		direction = point_direction(x,y,target.x,target.y)+random(20)-10
		speed = 2;
		walk = 30+random(10)
		alarm[1] = walk
		//Tell a friend
		if instance_exists(Hyena)
		{
			with instance_nearest_notme(x,y,Hyena)
			{
				if collision_line(x,y,other.target.x,other.target.y,Wall,0,0) < 0
				{
					direction = point_direction(x,y,other.target.x,other.target.y);
					speed += 1;
					walk += 4;
					if alarm[1] > 3
						alarm[1] = 3;
				}
			}
		}
	}
	else
	{
		var noCorpse = true;
		if my_health < maxhealth && instance_exists(Corpse)
		{
			corpseTarget = instance_nearest(x,y,Corpse);
			if (collision_line(x,y,corpseTarget.x,corpseTarget.y,Wall,false,false) < 0)
			{
				noCorpse = false;
				direction = point_direction(x,y,corpseTarget.x,corpseTarget.y);
				motion_add(direction,4.5);
				walk = 20;
				alarm[1] += walk;
			}
		}
		if noCorpse &&  random(4) < 1
		{
			motion_add(random(360),0.4)
			walk = actTime+random(actTime+5)
			alarm[1] = walk+actTime;
		}
	}
}
else 
{
	var noCorpse = true
	if my_health < maxhealth && instance_exists(Corpse)
	{
		corpseTarget = instance_nearest(x,y,Corpse);
		if (collision_line(x,y,corpseTarget.x,corpseTarget.y,Wall,false,false) < 0)
		{
			noCorpse = false;
			direction = point_direction(x,y,corpseTarget.x,corpseTarget.y);
			motion_add(direction,4.5);
			walk = actTime+5;
			alarm[1] += walk;
		}
	}
	if noCorpse && random(10) < 1
	{
		motion_add(random(360),0.4)
		walk = 10+random(15)
		alarm[1] = walk+10+random(30)
	}
}

