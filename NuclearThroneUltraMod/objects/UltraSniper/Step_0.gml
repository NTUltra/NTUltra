event_inherited()

if walk > 0
{
walk -= 1
motion_add(direction,1)
}

if gonnafire = 1 and alarm[2] > 9 and target != noone
{
	gunangle = point_direction(x,y,target.x,target.y)
}

if speed > 3
speed = 3

