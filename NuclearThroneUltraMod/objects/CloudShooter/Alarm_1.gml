///@description AI
alarm[1] = actTime;
scrTarget()
if target != noone && instance_exists(target) {
	gunangle = point_direction(x,y,target.x,target.y);
	var tdis = point_distance(target.x, target.y, x, y);
	if point_distance(x,y,xstart,ystart) > originRange
	{
		moveDirection += angle_difference(point_direction(x,y,xstart,ystart), moveDirection) * 0.25;
		alarm[1] = actTime * 0.5;
	}
    else if tdis < maxRange {
		if tdis > minRange
			moveDirection += angle_difference(gunangle, moveDirection) * 0.25;
		else
			moveDirection += angle_difference(gunangle + 180, moveDirection) * 0.25;
		with CloudShooter
		{
			if target != noone && instance_exists(target) && alarm[1] < actTime*2 && point_distance(target.x, target.y, x, y) < maxRange + 100
			{
				alarm[1] += actTime * 0.3;
			}
		}
		var ang = gunangle - 100;
		var am = 5;
		var ps = 2.6;
		var angStep = 200/am;
		repeat(am)
		{
			with instance_create(x,y,EnemyBullet1Square)
			{
				onlyHitPlayerTeam = true;
				motion_add(ang,ps);
				image_angle = direction
				team = other.team
			}
			ang += angStep;
		}
    }
	else
	{
		moveDirection += angle_difference(point_direction(x,y,xstart,ystart), moveDirection) * 0.25;	
	}
} else {
	if point_distance(x,y,xstart,ystart) > originRange
	{
		moveDirection += angle_difference(point_direction(x,y,xstart,ystart), moveDirection) * 0.25;
		alarm[1] = actTime * 0.5;
	}
	else
	{
	var n = instance_nearest(x,y,Floor)
	var dir = random(360);
	if n != noone
		dir = point_direction(x,y,Floor.x+16,Floor.y+16);
    moveDirection += angle_difference(dir,moveDirection) * 0.25;
	alarm[1] += actTime;
	}
}
