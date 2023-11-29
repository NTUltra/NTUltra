event_inherited()

if walk > 0
{
walk -= 1
motion_add(direction,0.8)
}

if gonnafire = 1 and alarm[2] > 8 and target != noone
{
gunangle = point_direction(x,y,target.x,target.y)
}

if speed > 1.5
speed = 1.5

