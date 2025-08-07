event_inherited()

if walk > 0
{
walk -= 1
motion_add(direction,acc)
}
var ms = maxSpeed;
if radAmmo <= 0
	ms += 2;
if speed > ms
{
	speed = ms
}

