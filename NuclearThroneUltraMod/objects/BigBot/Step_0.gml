event_inherited()

if walk > 0 && alarm[3] < 1
{
	walk -= 1
	motion_add(direction,acc)
}

if speed > maxSpeed
	speed = maxSpeed