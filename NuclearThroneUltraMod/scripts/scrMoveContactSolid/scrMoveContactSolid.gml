function scrMoveContactSolid(ang, mdis) {
	var mask = mask_index;
	/*
	if mask == mskPanda
		mask_index = mskPanda
	else if mask == mskSmallPanda
		mask_index = mskSmallPanda
	else
		mask_index = mskPlayer;
	*/
	var sx = x;
	var sy = y;
	var hitAwall = false;
	if !place_meeting(x+lengthdir_x(2,ang),y+lengthdir_y(2,ang),WallHitMe)
	{
		do {
			x += lengthdir_x(1,ang);
			y += lengthdir_y(1,ang);
		}
		until(point_distance(x,y,sx,sy) > mdis || 
			place_meeting(x+lengthdir_x(2,ang),y+lengthdir_y(2,ang),WallHitMe)
		)
		while place_meeting(x,y,WallHitMe)
		{
			hitAwall = true;
			x -= lengthdir_x(1,ang);
			y -= lengthdir_y(1,ang);
		}
	}
	mask_index = mask;
	scrForcePosition60fps();
	return hitAwall || point_distance(x,y,sx,sy) < mdis;
}
