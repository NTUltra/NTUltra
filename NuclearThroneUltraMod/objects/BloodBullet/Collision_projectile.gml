if team != other.team
{
	with other
	{
		if (typ == 1 or typ == 2)
		{
			if isGrenade
				instance_destroy(id,false);
			else
				instance_destroy();
		}
		else if instance_exists(Player) && Player.ultra_got[74] && Player.altUltra
		{
			if typ == 0 && !canBeMoved
			{
				var d = point_distance(xstart,ystart,other.x,other.y) - 1;
				x = xstart + lengthdir_x(d,image_angle);
				y = ystart + lengthdir_y(d,image_angle);
				image_xscale = point_distance(x,y,xstart,ystart)*0.5
			}
			else
			{
				instance_destroy();	
			}
		}
		else if typ == 3
		{
			x = xprevious;
			y = yprevious;
		}
	}
	if UberCont.normalGameSpeed == 60
	{
		if image_index < image_number - 3
			image_index += min(image_index + 1,image_number - 3)
		if image_speed < 4
			speed = min(4,image_speed + 1);
		if speed > 2
			speed = max(2,speed - 1)
	}
	else
	{
		if image_index < image_number - 3
			image_index += min(image_index + 2,image_number - 3)
		if image_speed < 4
			min(4,image_speed + 2);
		if speed > 2
			speed = speed = max(2,speed - 2)
	}
}

