instance_create(x,y,DiscTrail);


dist += 1

if creator != noone && instance_exists(creator)
{
	if dist>distrange
	{
		friction = 0.1;
		motion_add(point_direction(x,y,creator.x,creator.y),0.8);
		if point_distance(x,y,creator.x,creator.y) < 10
		{
			instance_destroy();
			instance_create(x,y,DiscDisappear)
		}

	}
}
else
	instance_destroy();

image_angle+=20;
alarm[1] = 1;
