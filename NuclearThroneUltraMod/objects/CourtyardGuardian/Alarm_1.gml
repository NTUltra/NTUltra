///@description AI
alarm[1] = actTime + random(actTime)
if alarm[2] > 0
	exit;

scrTarget()
if target != noone && instance_exists(target) {
	
	var dis = point_distance(target.x, target.y, x, y);
	if dis > 450
	{
		direction = point_direction(x,y,target.x,target.y);
		walk = 30;
		speed = 3;
	}
    else if dis > 48  && dis < 230 {
		var ran = random(10);
		
		
		if ran < 0.5
		{
			walk = actTime + random_range(-4,6);
			motion_add(point_direction(x,y,target.x,target.y),2);
		} else if dis < 140 && ran < 4
		{
			
			alarm[1] += 10;
			alarm[2] = 5;
			originX = x;
			originY = y;
			with CourtyardGuardian
			{
				alarm[1] += actTime*4;
				walk = max(actTime, walk);
				motion_add(point_direction(x,y,target.x,target.y) + 180,acc*2);
			}
			walk = 0;
			speed = 0;
			ammo = maxammo;
			angle = point_direction(x,y,target.x,target.y) + 180;//Behind player
			
		}
		else if ran > 8 && instance_exists(Floor)
		{
			//Go to a random floor
			motion_add(point_direction(x,y,Floor.x,Floor.y),acc);
			walk = actTime + random_range(-4,6);
		}
		
    }
    else {
        direction = point_direction(target.x, target.y, x, y) + random(20) - 10
        speed = 0.4
        walk = 40 + random(10)
    }

    if target.x < x
		right = -1
    else if target.x > x
		right = 1
}
else if random(10) < 1 {
    motion_add(random(360), 0.4)
    walk = 20 + random(10)
    alarm[1] = walk + 10 + random(30)
    if hspeed > 0
		right = 1
    else if hspeed < 0
		right = -1
}
