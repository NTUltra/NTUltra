///@description AI
alarm[1] = 8 + random(8)
if isInverted
	alarm[1] -= 7;
scrTarget()
if target > 0 {
    if collision_line(x, y, target.x, target.y, Wall, 0, 0) < 0 {
		var dis = point_distance(target.x, target.y, x, y);
        if dis > 32  && dis < 170 {
			if random(10) > 2
			{
				if (random(3) > 1)
				{
					direction = point_direction(x,y,target.x,target.y)+choose(90,-90);
					walk = 20 + random(10);
				}
				//Start shooting
				event_user(1);
			}
			else if alarm[7] < 1
			{
				//Charge
				event_user(0);
			}
        }
        else {
			gunangle = point_direction(x, y, target.x, target.y);
			var noCorpse = true
			if (my_health < maxhealth && instance_exists(Corpse) && random(4) < 2)
			{
				if my_health < maxhealth && instance_exists(Corpse)
				{
					if instance_exists(Corpse)
					{
						corpseTarget = instance_nearest(x,y,Corpse);
						if (collision_line(x,y,corpseTarget.x,corpseTarget.y,Wall,false,false) < 0)
						{
							noCorpse = false;
							direction = point_direction(x,y,corpseTarget.x,corpseTarget.y);
							motion_add(direction,4);
							walk = 20;
							alarm[1] += walk;
						}
						else
						{
							corpseTarget = noone;	
						}
					}
					if noCorpse
					{
						corpseTarget = scrFindCorpse();
						if corpseTarget != noone
						{
							noCorpse = false;
							direction = point_direction(x,y,corpseTarget.x,corpseTarget.y);
							motion_add(direction,4);
							walk = 20;
							alarm[1] += walk;
						}	
					}
				}	
			}
			if noCorpse
			{
				if random(2) < 1
				{
					//Charge
					event_user(0);
				}
				else
				{
		            direction = point_direction(target.x, target.y, x, y) + random(20) - 10
		            speed = 0.4
		            walk = 40 + random(10)
		            gunangle = point_direction(x, y, target.x, target.y)
				}
			}
        }

        if target.x < x
			right = -1
        else if target.x > x
			right = 1
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
				motion_add(direction,4);
				walk = 20;
				alarm[1] += walk;
			}
			else
			{
				corpseTarget = noone;	
			}
		}
		if noCorpse
		{
			var ran = random(10);
			if ran > 5 {
				motion_add(random(360), 0.4)
				walk = 10 + random(10)
				alarm[1] = walk + 5 + random(10)
			}
			else if (ran > 4)
			{
				//Shoot to the wall
				event_user(1);
			}
			else
			{
				//Charge
				event_user(0);	
			}
		}
		gunangle = direction
		if hspeed > 0
		    right = 1
		else if hspeed < 0
		    right = -1
	}
}
else if random(10) < 2
{
	motion_add(random(360), 0.4)
	walk = 20 + random(10)
	alarm[1] = walk + 10 + random(30)
	gunangle = direction
	if hspeed > 0
		right = 1
	else if hspeed < 0
		right = -1
}