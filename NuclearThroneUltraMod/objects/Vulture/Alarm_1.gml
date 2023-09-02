///@description AI
//HEAL FROM CORPSES!
alarm[1] = actTime + random(12)

scrTarget()
if target > 0 {
    if collision_line(x, y, target.x, target.y, Wall, 0, 0) < 0 {
		var dis = point_distance(target.x, target.y, x, y);
        if dis > 48  && dis < 170{
			//Leads shot!
			var xx = target.x + (target.hspeed*2)
			var yy = target.y + (target.vspeed*2)
			gunangle = point_direction(x, y, xx, yy);
			event_user(0);
			alarm[1] += 10;
        }
        else {
			gunangle = point_direction(x, y, target.x, target.y);
			var noCorpse = true
			if (my_health < maxhealth && instance_exists(Corpse) && random(4) < 2)
			{
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
				}	
			}
			if noCorpse
			{
	            direction = point_direction(target.x, target.y, x, y) + random(20) - 10
	            speed = 0.4
	            walk = 40 + random(10)
	            gunangle = point_direction(x, y, target.x, target.y)
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
		}
		if noCorpse && random(10) < 2
		{
			motion_add(random(360), 0.4)
			walk = 20 + random(10)
			alarm[1] = walk + 10 + random(30)
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