if active = 1
{
with instance_create(x,y,Smoke)
	depth = other.depth + 1;
	if speed < maxSpeed
	{
		if UberCont.normalGameSpeed == 60
			speed += 0.15
		else
			speed += 0.3
	}
}

