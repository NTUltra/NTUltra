event_inherited()

if walk > 0
{
	if choose (true,false)
	{
		with instance_create_depth(x + random(50) - 25,y + random(32) - 16,depth - 1,Curse)
		{
			motion_add(other.direction+180,1);
		}
	}
	else
	{
		with instance_create_depth(x + random(50) - 25,y + random(32) - 16,depth + 1,Dust)
		{
			motion_add(other.direction+180,1);
		}
	}
	var accc = acc;
	if UberCont.normalGameSpeed == 60
		accc *= 0.5;
	walk -= 1
	motion_add(gunangle,accc);
}
else if speed > 3
	speed = 3;
if speed > maxSpeed
speed = maxSpeed

