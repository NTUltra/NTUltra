event_inherited()
if sprite_index = spr_hurt
{
	alarm[2] = 0;
	alarm[3] = 0;
	corpseTarget = -1;
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
			motion_add(point_direction(x,y,target.x,target.y),1.8);
		}
		else
		{
			motion_add(direction,0.6)	
		}
	}
	else
	{
		motion_add(direction,0.6)

	}
}

if hspeed > 0
right = 1
else if hspeed < 0
right = -1

if instance_exists(Player)
{
    if Player.loops>0
    {
		if Player.loops>4
		{
			if speed > 5
				speed = 5
		}
		else
		{
		    if speed > 4.5
				speed = 4.5
		}
    }
    else
    {
    if speed > 4
    speed = 4
    }
}
else
{
if speed > 4
speed = 4
}

if corpseTarget > -1 && instance_exists(corpseTarget) && alarm[2] < 1
{
	if point_distance(x,y,corpseTarget.x,corpseTarget.y) < 24
	{
		walk = 0;
		speed = 0;
		alarm[1] += 20;
		sprite_index = spr_eat;
		image_index = 0;
		alarm[2] = 15;
		alarm[3] = 1;
	}
}

