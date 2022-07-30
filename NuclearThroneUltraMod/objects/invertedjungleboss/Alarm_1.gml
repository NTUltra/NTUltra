///@description AI
alarm[1] = actTime + random(actTime);
scrTarget()
if target > 0 {
	var dir = point_direction(x,y,target.x,target.y);
	var dc = dcos(dir);
	var tright = dc > 0;
	if dc == 0
		tright = choose(true,false);
	var ds = dsin(dir);
	var tup = ds > 0;
	if ds == 0
		tup = choose(true,false);
	var charged = false;
	var ran = random(10);
	if speed <= maxSpeed && ran < 7 || firstTime
	{
		firstTime = false;
		charged = true;
		speed = 0;
		if tright
		{
			if tup
			{
				chargeDirection = 45;
			}
			else
			{
				chargeDirection = 315;
			}
		}
		else
		{
			if tup
			{
				chargeDirection = 135;
			}
			else
			{
				chargeDirection = 225;
			}
		}
		alarm[3] = tellTime;
		alarm[1] += tellTime;
		snd_play(sndJungleAssassinWake);
		repeat(8)
		{
			var dis = random_range(4,12);
			var dir = random(360);
			var xx = x+lengthdir_x(dis,dir);
			var yy = y+lengthdir_y(dis,dir);
			with instance_create(xx,yy,Leaf)
			{
				depth = other.depth;
			}
			with instance_create(xx,yy,Dust)
			{
				sprite_index = sprLeaf;
				depth = other.depth;
				motion_add(other.chargeDirection,random_range(4,16));
			}
			with instance_create(xx,yy,Debris)
			{
				depth = other.depth;
				motion_add(other.chargeDirection,random_range(2,6));
			}
		}
	}
	if (!charged || ran < 2) && ran < 5
	{
		event_user(0);
		alarm[1] += 20; 
	}
	if ran < 1
	{
		scrDrop(10,0);	
	}
	//cos 45 = 0.7 cos 90 = 0; cos 0 = 0;
	//cos 135 = -0.7
	//cos < 0 left  cos > 0 right
	// sin 45 = 0.7 sin 90 = 1 sin 0 = 0 sin 135 = 0.7  sin 225 = - 0.7
	// sin > 0 up sin < 0 down
}
