///@description AI
alarm[1] = actTime + random(actTime)
scrTarget()
if target != noone {
	var dis = point_distance(target.x, target.y, x, y);
	if dis < maxDistance {
		if stalking && depth > 0
		{
			alarm[1] = ceil(actTime * 0.5);
			tx = target.x;
			ty = target.y + 34;
			motion_add(point_direction(x,y,target.x, target.y),acc);
			if dis < 32
			{
				x = tx;
				y = ty;
				walk = 0;
				event_user(0);
			}
		}
		else if dis > 32
		{
			var ran = random(100);
			if image_alpha > 0.9 && ran < 30 {
				event_user(2);
				gunangle = point_direction(x, y, target.x, target.y)
				alarm[4] = 3;
		        alarm[1] = actTime * 3 + random(actTime*2);
				if ran < 40 {
					motion_add(random(360),acc);
					walk = alarm[1] + actTime + random(actTime);
				}
		    }
		    else if ran < 50 && instance_number(enemy) > 4 {
				event_user(1);
		    }
			else if ran < 80 {
				motion_add(random(360),acc);
				walk = alarm[1] + actTime + random(actTime);
			}
		}
		if target.x < x
			right = -1
	    else if target.x > x
			right = 1
	}
	else
	{
		event_user(2);
		if point_distance(x,y,xstart,ystart) > startingPointDistance
		{
			direction = point_direction(x,y,xstart,ystart);
			walk = alarm[1];
		}
		 if hspeed > 0
			right = 1
	    else if hspeed < 0
			right = -1
	}
}
else if point_distance(x,y,xstart,ystart) > startingPointDistance
{
	direction = point_direction(x,y,xstart,ystart);
	walk = alarm[1];
}
else if random(10) < 1 {
    motion_add(random(360), acc)
    walk = actTime + random(actTime)
    alarm[1] = walk + actTime*2 + random(actTime*2)
    gunangle = direction
    if hspeed > 0
		right = 1
    else if hspeed < 0
		right = -1
}