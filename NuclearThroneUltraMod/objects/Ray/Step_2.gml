if(instance_exists(creator)){
	var foundAhit = false;
	x = creator.x+lengthdir_x(15,direction);
	y = creator.y+lengthdir_y(15,direction);
	var mx = UberCont.mouse__x;
	var my = UberCont.mouse__y;
	direction = point_direction(x,y,mx,my);
	var xx = x + lengthdir_x(range,direction);
	var yy = y + lengthdir_y(range,direction);
	//Lock on
	if instance_exists(hitme)
	{
		var n = instance_nearest(mx,my,hitme);
		if (n.team != team && point_distance(x,y,n.x,n.y) < range)
		{
			if point_distance(mx,my,n.x,n.y) < detectRange && (morphType == 3 || collision_line(x,y,n.x,n.y,Wall,0,0) < 0)
			{
				foundAhit = true;
				direction = point_direction(x,y,n.x,n.y);
				xx = n.x;
				yy = n.y;
			}
		}
		if (foundAhit)
		{
			var xxx = creator.x;
			var yyy = creator.y;
			var  dir = point_direction(creator.x,creator.y,mx,my);
			var step = 24;
			do {
				var n = instance_nearest(xxx,yyy,hitme);
				if (n.team != team && point_distance(x,y,n.x,n.y) < range)
				{
					if point_distance(xxx,yyy,n.x,n.y) < detectRange && (morphType == 3 || collision_line(x,y,n.x,n.y,Wall,0,0) < 0)
					{
						foundAhit = true;
						direction = point_direction(x,y,n.x,n.y);
						xx = n.x;
						yy = n.y;
					}
				}
				xxx += lengthdir_x(step,dir);
				yyy += lengthdir_y(step,dir);
			} until (foundAhit || point_distance(creator.x,creator.y,xx,yy) > range)
		}
	}
	image_angle = direction;
	if (morphType != 3)
	{
		hit = collision_line_point(x,y,xx,yy,Wall,false,false);
	} else {
		hit[1] = xx;
		hit[2] = yy;
	}
}

