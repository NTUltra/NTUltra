///@description AI
alarm[1] = actTime + random(actTime)

if instance_exists(ThroneExplo)
{
	if point_distance(x,y,ThroneExplo.x,ThroneExplo.y) < 170
	{
		walk = actTime;
		motion_add(point_direction(ThroneExplo.x,ThroneExplo.y,x,y),2);
	}
}

if instance_exists(enemy)
	target = instance_nearest(x,y,enemy);
else 
	target = noone;

if target != noone {
    if collision_line(x, y, target.x, target.y, Wall, 0, 0) < 0 {
        if point_distance(target.x, target.y, x, y) > 32 {
            if random(5) < 2  && alarm[2] < 1 {
                event_user(1);
            }
            else {
                direction = point_direction(x, y, target.x, target.y) + random(180) - 90
                speed = 0.4
                walk = actTime + random(actTime)
                gunangle = point_direction(x, y, target.x, target.y)
				if scrMeleeWeapons(wep)
				{
					mp_potential_step(target.x,target.y,3,false);
					motion_add(point_direction(x, y, target.x, target.y),0.2);
				}
            }

        }
        else {
            direction = point_direction(target.x, target.y, x, y) + random(20) - 10
            speed = 0.4
            walk = actTime*2 + random(actTime)
            gunangle = point_direction(x, y, target.x, target.y)
        }

        if target.x < x
        right = -1
        else if target.x > x
        right = 1
    }
    else if random(4) < 1 {
        motion_add(random(360), 0.4)
        walk = actTime*2 + random(actTime)
        alarm[1] = walk + actTime;
        gunangle = direction
        if hspeed > 0
			right = 1
        else if hspeed < 0
			right = -1
    }
}
else if random(10) < 1 {
    motion_add(random(360), 0.4)
    walk = actTime*2 + random(actTime)
    alarm[1] = walk + actTime
    gunangle = direction
    if hspeed > 0
		right = 1
    else if hspeed < 0
		right = -1
}

if !instance_exists(ThroneExplo)
{
	if instance_exists(PopoNade)
	{
		var np = instance_nearest(x,y,PopoNade);
		if np != noone
		{
			walk += 4;
			alarm[1] = max(alarm[1] - 4 , 1);
			walk = min(walk,20);
			motion_add(point_direction(x,y,np.x,np.y)+180+dodgeOffset,3);
		}	
	} else if instance_exists(projectile)
	{
		var np = instance_nearest(x,y,projectile);
		if np != noone && np.team != team
		{
			walk += 4;
			alarm[1] = max(alarm[1] - 4 , 1);
			walk = min(walk,20);
			motion_add(point_direction(x,y,np.x,np.y)+180+dodgeOffset,3);
		}
	}
}
