event_inherited()
if sprite_index = spr_hurt
{
	alarm[2] = 0;
	alarm[3] = 0;
	corpseTarget = noone;
}
else if alarm[2] > 0
	sprite_index = spr_eat;
if walk > 0
{
walk -= 1
	if target > 0
	{
		if collision_line(x,y,target.x,target.y,Wall,0,0) < 0
		{
			motion_add(point_direction(x,y,target.x,target.y),accCharge);
		}
		else
		{
			motion_add(direction,acc)	
		}
	}
	else
	{
		motion_add(direction,acc)

	}
}

if hspeed > 0
right = 1
else if hspeed < 0
right = -1

if speed > maxSpeed
	speed = maxSpeed

if corpseTarget != noone && instance_exists(corpseTarget) && alarm[2] < 1
{
	if point_distance(x,y,corpseTarget.x,corpseTarget.y) < 24
	{
		walk = 0;
		speed = 0;
		alarm[1] += healTime+5;
		sprite_index = spr_eat;
		image_index = 0;
		alarm[2] = healTime;
		alarm[3] = 1;
	}
}

