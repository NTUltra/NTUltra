if other.team != 2 and other.my_health > 0
{
	with other
	{
		if place_meeting(x,y,Floor)
			direction = point_direction(other.x,other.y,x,y);
		var dis = point_distance(x,y,other.x,other.y)
		if UberCont.normalGameSpeed == 60
		{
			if dis < 72
			{
				motion_add(other.image_angle,2)
				DealDamage(0.75, true,true,false);
			}
			else
			{
				motion_add(other.image_angle,0.5);
				speed -= 0.25;
				DealDamage(0.5, true,true,false);
			}
		}
		else
		{
			if dis < 72
			{
				motion_add(other.image_angle,4)
				DealDamage(1.5, true,true,false);
			}
			else
			{
				motion_add(other.image_angle,1)
				speed -= 0.5;
				DealDamage(1, true,true,false);
			}
		}
		if dis < 44
		{
			direction = other.image_angle;
			x += hspeed;
			y += vspeed;
		}
		//Slow down actions because of scare
		if alarm[1] > 1
			alarm[1] += 0.25;
			
		instance_create(x+random_range(-4,4),y+random_range(-4,4),Smoke)
	}
}

