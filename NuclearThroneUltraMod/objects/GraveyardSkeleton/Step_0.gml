event_inherited()

if walk > 0
{
	walk -= 1
	motion_add(direction,1)
}

if hspeed > 0
	right = 1
else if hspeed < 0
	right = -1

if speed > maxSpeed
	speed = maxSpeed;

