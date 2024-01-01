
if instance_exists(creator)
{
	x = creator.x+lengthdir_x(24,point_direction(creator.x,creator.y,UberCont.mouse__x,UberCont.mouse__y))
	y = creator.y+lengthdir_y(24,point_direction(creator.x,creator.y,UberCont.mouse__x,UberCont.mouse__y))
	if ammo > 0
	{
		if UberCont.normalGameSpeed == 60
		{
			image_xscale += 0.025;
			image_yscale += 0.025;	
		}
		else
		{
			image_xscale += 0.05
			image_yscale += 0.05
		}
	}
}

