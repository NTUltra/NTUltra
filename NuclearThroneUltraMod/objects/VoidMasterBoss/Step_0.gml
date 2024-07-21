event_inherited()

if walk > 0
{
	walk -= 1
	motion_add(direction,acc)
}

if alarm[2] > 0
{
	if speed > aboutToDashSpeed
		speed = aboutToDashSpeed;
}
else if speed > maxSpeed
	speed = maxSpeed

