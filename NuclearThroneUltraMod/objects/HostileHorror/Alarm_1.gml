///@description AI
alarm[1] = actTime + random(actTime);
if wasBehindWall
	exit;
if sleeping && alarm[2] < 1
{
	alarm[2] = 1;
}
sleeping = false;
scrTarget()
if target != noone {
	if radAmmo > 0
	{
	    if alarm[3] < 1 && collision_line(x, y, target.x, target.y, Wall, 0, 0) < 0 {
			gunangle = point_direction(x, y, target.x, target.y);
	        alarm[3] = fireRate + 1;
			snd_play(sndHorrorBeam);
			if mySound == noone || !instance_exists(mySound)
			{
				with mySound
					instance_destroy();
				mySound = snd_play(sndHorrorLoop,
				0,false,true,2,false,false,0.8,true,id);
			}
	        if target.x < x
				right = -1
	        else if target.x > x
				right = 1
	    }
	    else
		{
			var ran = random(100);
			if collision_line(x, y, target.x, target.y, Wall, 0, 0) < 0
			{
				if target.x < x
					right = -1
			    else if target.x > x
					right = 1
				if ran < 20 {
			        motion_add(random(360), acc)
			        walk = alarm[1] + random(actTime);
			        if hspeed > 0
						right = 1
			        else if hspeed < 0
						right = -1
				} else if ran < 60 {
					motion_add(gunangle, acc);
					alarm[1] = max(1,actTime * 0.5);
					walk += alarm[1];
				}
				 else if ran < 80 {
					motion_add(point_direction(x, y, target.x, target.y), acc);
					walk += alarm[1];
				}
				else if ran < 90
				{
					event_user(1);	
				}
			}
			else if ran < 30 {
				wasBehindWall = true;
		        motion_add(random(360), acc)
		        walk = alarm[1] + random(actTime);
		        if hspeed > 0
					right = 1
		        else if hspeed < 0
					right = -1
			}
			else if ran < 80
			{
				wasBehindWall = true;
				event_user(2);
			}
			else
			{
				wasBehindWall = true;	
			}
	    }
	}
	else
	{
		alarm[1] = actTime * 0.5 + random(actTime*0.5);
		if 	collision_line(x, y, target.x, target.y, Wall, 0, 0) < 0
		{
			gunangle = point_direction(x, y, target.x, target.y)
			motion_add(gunangle,acc);
			walk = alarm[1] + random(actTime * 0.5);
			if target.x < x
				right = -1
	        else if target.x > x
				right = 1
			if random(4) < 1
			{
				event_user(1);
				alarm[1] += actTime * 0.5;
			}
		}
		else if random(4) < 1 {
	        motion_add(random(360), acc)
	        walk = alarm[1] + random(actTime * 0.5);
	        if hspeed > 0
				right = 1
	        else if hspeed < 0
				right = -1
	    }
		else
		{
			event_user(2);
		}
	}
}
else if random(10) < 1 {
    motion_add(random(360), acc)
	walk = alarm[1] + random(actTime);
    if hspeed > 0
		right = 1
    else if hspeed < 0
		right = -1
}
else
{
	event_user(2);	
}