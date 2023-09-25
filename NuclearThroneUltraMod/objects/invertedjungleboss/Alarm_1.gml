///@description AI
alarm[1] = actTime + random(actTime);
scrTarget()
if target != noone {
	
	var charged = false;
	var ran = random(10);
	if speed <= maxSpeed && ran < 7 || firstTime
	{
		var tx = target.x;
		var ty = target.y;
		if x > tx
			var left = true;
		else if x < tx
			var left = false;
		else
			var left = choose(false,true);
	
		if y > ty
			var up = true;
		else if y < ty
			var up = false;
		else
			var up = choose(false,true);
		//Is horizontally closer?
		if (abs(x - target.x) < abs(y - target.y))
		{
			if up
			{
				chargeDirection = 90;
			}
			else
			{
				chargeDirection = 270;	
			}
		}
		else
		{
			if left
			{
				chargeDirection = 180;	
			}
			else
			{
				chargeDirection = 0;
			}
		}
		firstTime = false;
		charged = true;
		speed = 0;
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
		scrAddDrops(1);
		scrDrop(20,0);	
	}
}
