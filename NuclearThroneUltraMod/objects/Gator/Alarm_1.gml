alarm[1] = actTime + random(actTime)


scrTarget()
if target > 0 {
    if collision_line(x, y, target.x, target.y, Wall, 0, 0) < 0 {
        if point_distance(target.x, target.y, x, y) > 48 and point_distance(target.x, target.y, x, y) < 120 {
            if random(2) < 1 {
                alarm[2] = 15;
                instance_create(x,y,Notice);
				instance_create(x+5,y,Notice);
				instance_create(x-5,y,Notice);
                alarm[1] = actTime*3
            }
            else if random(5) < 1 {
                direction = point_direction(x, y, target.x, target.y) + random(180) - 90
				var n = instance_nearest(x,y,Wall)
				if n != noone && point_distance(x,y,n.x,n.y) < 48
				{
					direction = point_direction(n.x,n.y,x,y);
				}
                speed = 0.6
                walk = 10 + random(10)
                gunangle = point_direction(x, y, target.x, target.y)
            }

        }
        else {
			if random(3) < 1
				direction = point_direction(x,y,target.x, target.y) + random(20) - 10
			else
				direction = point_direction(target.x, target.y, x, y) + random(20) - 10
            speed = 0.4
            walk = actTime*2 + random(10)
            gunangle = point_direction(x, y, target.x, target.y)
        }

        if target.x < x
			right = -1
        else if target.x > x
			right = 1
    }
    else if random(4) < 1 {
        motion_add(random(360), 0.4)
        walk = actTime*2 + random(10)
        alarm[1] = walk + actTime + random(actTime*2)
        gunangle = direction
        if hspeed > 0
        right = 1
        else if hspeed < 0
        right = -1
    }
	else if instance_exists(Wall)
	{	
		var n = instance_nearest(x,y,Wall)
		if n != noone && point_distance(x,y,n.x,n.y) < 64
		{
			motion_add(point_direction(n.x,n.y,x,y), 0.4)
	        walk = actTime*2 + random(10)
	        alarm[1] = walk + actTime + random(actTime*2)
		}
	}
}
else if random(10) < 1 {
    motion_add(random(360), 0.4)
    walk = 20 + random(10)
    alarm[1] = walk + 10 + random(30)
    gunangle = direction
    if hspeed > 0
    right = 1
    else if hspeed < 0
    right = -1
}
