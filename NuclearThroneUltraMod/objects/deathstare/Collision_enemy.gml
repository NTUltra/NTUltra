if other.team != 2 and other.my_health > 0
{
	with other
	{
		my_health -= 1;
		image_index = 0
		direction = point_direction(other.x,other.y,x,y);
		motion_add(other.image_angle,3)
		//Slow down actions because of scare
		if alarm[1] > 1
			alarm[1] += 0.25;
			
		instance_create(x+random_range(-4,4),y+random_range(-4,4),Smoke)
	}
}

