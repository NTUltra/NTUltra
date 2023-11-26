///@description AI
alarm[1] = actTime + random(actTime)
scrTarget()
var ran = random(10);
if target != noone {
    if collision_line(x, y, target.x, target.y, Wall, 0, 0) < 0 {
		if (target.x < x && image_xscale > 0) || (target.x > x && image_xscale < 0) {
			event_user(1);//Turn around	
		}
		else
		{
			if ran > 9
			{
				hspeed += image_xscale * -1;
			}
			else if ran > 7
			{
				walk = actTime*2 + random(actTime*2);
				motion_add(random(360),acc);
			}
			else if ran > 6
			{
				event_user(4);
			}
			else if ran > 5
			{
				event_user(4);
				walk += alarm[1];
			}
			else if ran > 4
			{
				event_user(5);
			}
			else if ran > 1.8
			{
				direction = point_direction(x,y,target.x,target.y);
				speed = maxSpeed;
				walk = alarm[1];
			}
			else if ran > 0.8
			{
				walk += actTime * 2;
			}
			else
			{
				event_user(0);
			}
		}
    }
    else if ran < 1 {
		event_user(0);
	} else if ran < 2 {
		event_user(1);//Turn around	
    }
}
else if ran < 1 {
	motion_add(random(360), acc)
	walk = actTime * 3;
	alarm[1] = walk
}
