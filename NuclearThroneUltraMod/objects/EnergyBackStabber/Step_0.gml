
if instance_exists(creator)
{
	x = creator.x+lengthdir_x(74 + (gotLongarms*40),point_direction(creator.x,creator.y,UberCont.mouse__x,UberCont.mouse__y))
	y = creator.y+lengthdir_y(74 + (gotLongarms*40),point_direction(creator.x,creator.y,UberCont.mouse__x,UberCont.mouse__y))
	if ammo > 0
	{
		if UberCont.normalGameSpeed == 60
		{
			image_xscale += 0.011;
			image_yscale += 0.011;	
		}
		else
		{
			image_xscale += 0.022
			image_yscale += 0.022
		}
	}
}

