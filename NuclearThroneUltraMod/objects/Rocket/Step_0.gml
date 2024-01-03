if active = 1
{
with instance_create(x,y,Smoke)
	depth = other.depth + 1;
	if speed < 16
		speed += 1.2
}

