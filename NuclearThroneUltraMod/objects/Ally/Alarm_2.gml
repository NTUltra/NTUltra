alarm[2] = 40
with Portal
{
	if (type == 1 || type == 4) && !inverted
	{
		other.alarm[2] = 1;
	}
	
}
my_health -= 1
instance_create(x,y,Smoke)

