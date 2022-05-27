event_inherited()

if walk > 0
{
walk -= 1
motion_add(direction,acc)
}




if alarm[2] > 0 
{
	scrTarget();
	if target > 0
	{
		var dir = laserDirection - laserOffset;
		if alarm[2] < laserDuration - tellTime
		{
			laserOffset -= (angleStep*laserDir);	
		}
		with myLaser {
			x = other.x+(other.lox*other.right);
			y = other.y;
			image_angle = dir;
		}
		if isInverted
		{
			with instance_create(x+(lox*right),y,EnemyIceFlame)
	        {
		        motion_add(dir,2+random(4))
		        image_angle = direction
		        team = other.team
	        }
		}
		else
		{
			with instance_create(x+(lox*right),y,TrapFire)
	        {
		        motion_add(dir,2+random(3))
		        image_angle = direction
		        team = other.team
	        }
		}
	}
	else
	{
		alarm[2] = 0;
		with myLaser
		{
			event_perform(ev_alarm,0);	
		}
		sprite_index = spr_idle;
	}
}
else
{
	if hspeed > 0
		right = 1
	else if hspeed < 0
		right = -1
	motion_add(direction,acc)	
}

if speed > maxSpeed
speed = maxSpeed;
