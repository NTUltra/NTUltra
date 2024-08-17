/// @description SWEAT!
var a2 = stressLowCheck;
with Player
{
	if skill_got[22] == 1
	{
		if (((stressTargetHealth == 1 && maxhealth == 1) || stressTargetHealth < ceil(maxhealth*0.75)) && (reload > 0 || breload > 0 || creload > 0))
		{
			with instance_create(x+random_range(-9,9),y-6-random(7),Sweat)
			{
				depth = other.depth-1;
				vspeed = -1 - random(3);
				hspeed = (2 + random(3))*(-other.right);
				image_yscale = random_range(0.75,1);
			}
			a2 = min(30,(maxhealth - (maxhealth - my_health))*1.2);
			if maxhealth == 1
			{
				a2 = 6;
			}
		}
	}
	else
	{
		a2 = 0;
	}
}
alarm[2] = a2;