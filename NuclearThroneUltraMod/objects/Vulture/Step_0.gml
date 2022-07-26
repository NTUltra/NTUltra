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
motion_add(direction,0.8)
}

if speed > maxSpeed
speed = maxSpeed

if corpseTarget > -1 && instance_exists(corpseTarget) && alarm[2] < 1
{
	if point_distance(x,y,corpseTarget.x,corpseTarget.y) < 24
	{
		walk = 0;
		speed = 0;
		alarm[1] += eatTime;
		sprite_index = spr_eat;
		image_index = 0;
		alarm[2] = 15;
		alarm[3] = 1;
	}
}