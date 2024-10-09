///@description AI
alarm[1] = actTime + random(actTime)
if goToTarget
	exit;
if my_health < maxhealth*0.5 && !reachedHalfHealth
{
	reachedHalfHealth = true;
	instance_create(x,y,PortalOpenWallBreak);
	scrDrop(40,0,true);
	if instance_exists(Player) && Player.my_health < Player.maxhealth
		scrDrop(80,0,false,0,3)//Only drops health
	alarm[6] = 105;//Cant become vulnerable for a bit
	event_user(0);
}
scrTarget()
if target != noone {
	var dis = point_distance(target.x, target.y, x, y);
	if (dis > materializeRange || (dis > 96 && random(4) < 1))
		event_user(0);
	else if alarm[6] < 1
		event_user(1);
    if collision_line(x, y, target.x, target.y, Wall, 0, 0) < 0 {
		if random(3) < 1
		{
			motion_add(random(360),acc * 2);
			walk = alarm[1];
		}
        if !justAroundWall && dis > 32 || loops > 4{
			instance_create(x,y,Notice);
			ammo = maxAmmo;
			if choose(true,false)
			{
				alarm[2] = 10;
			}
			else
			{
				alarm[5] = 14;
				instance_create(x-5,y,Notice);
				instance_create(x+5,y,Notice);
			}
			alarm[1] += actTime;
			if !reachedHalfHealth
			{
				speed *= 0.5;
				walk *= 0.5;
			}
			else if random(3) < 1
			{
				walk = max(walk,actTime);
				motion_add(random(360),acc);
			}
			gunangle = point_direction(x,y,target.x, target.y)
        }
        else {
            direction = gunangle = point_direction(x,y,target.x, target.y) + random_range(30,-30);
            walk = actTime + random(actTime*2)
            gunangle = point_direction(x, y, target.x, target.y)
        }
		justAroundWall = false;
        if target.x < x
			right = -1
        else if target.x > x
			right = 1
    }
	else
	{
		justAroundWall = true;
		if target.object_index == Player && random(4) < 1
		{
			event_user(2);
		}
		motion_add(point_direction(x,y,target.x, target.y) + random_range(80,-80),acc);
		if random(4) < 1 {
	        direction = random(360);
	        walk = actTime + random(actTime*2)
	        if hspeed > 0
				right = 1
	        else if hspeed < 0
				right = -1
	    }
		else
		{
			motion_add(point_direction(x,y,target.x, target.y) + random_range(30,-30),acc);
			walk = alarm[1];
			if hspeed > 0
				right = 1
	        else if hspeed < 0
				right = -1
		}
	}
}
else if random(10) < 1 {
    motion_add(random(360), 0.4)
	walk = actTime + random(actTime*2)
    alarm[1] = walk + actTime + random(actTime*2)
    if hspeed > 0
    right = 1
    else if hspeed < 0
    right = -1
}
