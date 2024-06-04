///@description AI
alarm[1] = actTime + random(actTime)
scrTarget()
if target != noone {
	var dis = point_distance(target.x, target.y, x, y)
	if dis > maxRange
	{
		var ran = random(100);
		if ran < 30
		{
			motion_add(point_direction(x,y,xstart,ystart), acc)
		    walk = actTime * 2 + random(actTime * 2)
		    alarm[1] = walk + random(actTime*4)
		    if hspeed > 0
				right = 1
		    else if hspeed < 0
				right = -1	
		}
		else if ran < 80
		{
			motion_add(random(360), acc)
		    walk = actTime*3 + random(actTime * 3)
		    alarm[1] = walk + actTime*2 + random(actTime*2)
		    if hspeed > 0
				right = 1
		    else if hspeed < 0
				right = -1
		}
	}
    else if dis > minRange {
        if dis < attackRange {
			var ran = random(100);
			if ran < 20
			{
				event_user(0);
			}
			else if ran < 40
			{
				event_user(1);
			}
			else if ran < 70
			{
				motion_add(random(360), acc)
			    walk = alarm[1];
			}
        }
        else {
            direction = point_direction(x, y, target.x, target.y) + random(60) - 30
            walk = alarm[1] + actTime;
        }
		 if target.x < x
			right = -1
	    else if target.x > x
			right = 1
    }
    else {
		//Go for melee attack
        direction = point_direction(target.x, target.y, x, y) + random(20) - 10
		alarm[1] += random(actTime);
        walk = alarm[1] + actTime;
		 if target.x < x
			right = -1
	    else if target.x > x
			right = 1
    }
}
else if point_distance(x,y,xstart,ystart) > startingPointDistance
{
	motion_add(point_direction(x,y,xstart,ystart),acc);
	walk = alarm[1];
}
else if random(10) < 1 {
    motion_add(random(360), acc)
    walk = actTime + random(actTime)
    alarm[1] = walk + actTime + random(actTime*4)
    if hspeed > 0
		right = 1
    else if hspeed < 0
		right = -1
}