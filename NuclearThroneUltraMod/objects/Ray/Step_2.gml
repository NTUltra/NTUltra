if(instance_exists(creator)){
	x = creator.x+lengthdir_x(15,direction);
	y = creator.y+lengthdir_y(15,direction);
	var mx = UberCont.mouse__x;
	var my = UberCont.mouse__y;
	direction = point_direction(x,y,mx,my);
	var xx = x + lengthdir_x(range,direction);
	var yy = y + lengthdir_y(range,direction);
	//Lock on
	if instance_exists(enemy)
	{
		var n = instance_nearest(mx,my,enemy);
		if (n.team != team && point_distance(x,y,n.x,n.y) < range)
		{
			if point_distance(mx,my,n.x,n.y) < detectRange && (morphType == 3 || collision_line(x,y,n.x,n.y,Wall,0,0) < 0)
			{
				direction = point_direction(x,y,n.x,n.y);
				xx = n.x;
				yy = n.y;
			}
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

