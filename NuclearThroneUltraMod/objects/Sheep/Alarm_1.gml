alarm[1] = 20+random(10)
if random(10) < 1
{
	motion_add(random(360),0.4)
	walk = 20+random(10)
	alarm[1] = walk+10+random(30)
	//gunangle = direction
	if hspeed > 0
		right = 1
	else if hspeed < 0
		right = -1
}

