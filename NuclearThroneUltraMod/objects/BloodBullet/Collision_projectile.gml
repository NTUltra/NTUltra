if team != other.team
{
	with other
	{
		if (typ =1 or typ = 2)
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
}

