///@description AI
alarm[1] = actTime + random(actTime);
var dis = 0;
if myGuy != noone && instance_exists(myGuy)
{
	dis = point_distance(x,y,myGuy.x,myGuy.y);
	if dis > 200
	{
		myGuy = noone;
	}
}
else
{
	myGuy = noone;
	myGuy = instance_nearest_notme(x,y,enemy);
	if myGuy != noone
	{
		dis = point_distance(x,y,myGuy.x,myGuy.y);
		if myGuy.team != team || myGuy.my_health <= 0 || dis > 200 || myGuy.object_index == UltraProtector
			myGuy = noone;
		if myGuy != noone
		{
			wkick = 4;
		}
	}
}

if myGuy == noone
{
	scrTarget();
	connectionTime = 0;
	alarm[2] = 0;
	alarm[3] = 0;
	alarm[4] = 0;
	alarm[5] = 0;
	with myConnectionBullet
		instance_destroy();
}
if myGuy == noone && target != noone {
    if collision_line(x, y, target.x, target.y, Wall, 0, 0) < 0 {
        if point_distance(target.x, target.y, x, y) > 52 {
            if random(4) < 1 {
                snd_play(sndEnemyFire)
                wkick = 4
				gunangle = point_direction(x, y, target.x, target.y)
                with instance_create(x, y, EnemyBullet1) {
                    motion_add(other.gunangle + random(20) - 10, 5);
                    image_angle = direction
                    team = other.team
                }
                alarm[1] = actTime*2 + random(actTime)
            }
            else {
                direction = point_direction(x, y, target.x, target.y) + random(180) - 90
                speed = 0.4
                walk = actTime*2 + random(actTime)
                gunangle = point_direction(x, y, target.x, target.y);
            }

        }
        else {
            direction = point_direction(target.x, target.y, x, y) + random(20) - 10
            speed = 0.4
            walk = actTime*3 + random(actTime)
            gunangle = point_direction(x, y, target.x, target.y);
        }

        if target.x < x
			right = -1
        else if target.x > x
			right = 1
    }
    else if random(4) < 1 {
        motion_add(random(360), 0.4)
        walk = actTime*2 + random(actTime*2)
        alarm[1] = walk + actTime + random(actTime)
        gunangle = 90
        if hspeed > 0
			right = 1
        else if hspeed < 0
			right = -1
    }
}
else if myGuy != noone
{
	if collision_line(x, y, myGuy.x, myGuy.y, Wall, 0, 0) < 0 {
		if dis > 64
		{
			direction = point_direction(x,y,myGuy.x, myGuy.y);
			speed = 1;
			mp_potential_step(myGuy.x,myGuy.y,2,false);
	        walk = actTime + 4;
		}
		else
		{
			motion_add(point_direction(x, y, myGuy.x, myGuy.y) + 180 +random_range(30,-30),2);
			if random(10) < 5
			{
				walk = actTime + 4;
				motion_add(random(360),1);
			}
		}
	}
	else
	{
		mp_potential_step(myGuy.x,myGuy.y,2,false);
	    walk = 3;
		alarm[1] = 3;
	}
}
else if random(10) < 1 {
    motion_add(random(360), 0.4)
    walk = actTime*2 + random(actTime)
    alarm[1] = walk + actTime + random(actTime)
    gunangle = 90;
    if hspeed > 0
    right = 1
    else if hspeed < 0
    right = -1
}
