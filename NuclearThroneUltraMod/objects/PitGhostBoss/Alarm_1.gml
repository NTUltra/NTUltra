///@description AI
alarm[1] = actTime + random(actTime)
if goToTarget
	exit;
if my_health < maxhealth*0.6 && !reachedHalfHealth
{
	reachedHalfHealth = true;
	with ThePit
	{
		snd_play(sndGhostSpawn,0.1,true);
		repeat(min(20,loops + 1))
		{
			with instance_create(x + random_range(32,-32),y + random_range(32, - 32), PitGhost)
			{
				motion_add(random(360),6);
				walk += 2;
				actTime += 2;
				alarm[1] *= 0.5;
				if instance_exists(Player) && Player.skill_got[29] {
					alarm[1] += 50;
					scrGiveSnooze();
				}
				with instance_create(x,y,Smoke)
				{
					motion_add(other.direction,1);	
				}
			}
		
			with instance_create(x + random_range(32,-32),y + random_range(32, - 32), PitGhostExploder)
			{
				motion_add(random(360),6);
				walk += 2;
				actTime += 2;
				alarm[1] *= 0.5;
				if instance_exists(Player) && Player.skill_got[29] {
					alarm[1] += 50;
					scrGiveSnooze();
				}
				with instance_create(x,y,Smoke)
				{
					motion_add(other.direction,1);	
				}
			}
			with instance_create(x + random_range(32,-32),y + random_range(32, - 32), PitGhostLaser)
			{
				motion_add(random(360),6);
				walk += 2;
				actTime += 2;
				alarm[1] *= 0.5;
				if instance_exists(Player) && Player.skill_got[29] {
					alarm[1] += 50;
					scrGiveSnooze();
				}
				with instance_create(x,y,Smoke)
				{
					motion_add(other.direction,1);	
				}
			}
		}
	}
	instance_create(x,y,WallBreakWallOnlyBigCircle);
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
			scrDrop(10,0);
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
		motion_add(point_direction(x,y,target.x, target.y) + random_range(60,-60),acc);
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
			motion_add(point_direction(x,y,target.x, target.y) + random_range(20,-20),acc);
			walk = alarm[1];
			if hspeed > 0
				right = 1
	        else if hspeed < 0
				right = -1
		}
		if dis > 400
		{
			direction = point_direction(x,y,target.x,target.y);	
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
