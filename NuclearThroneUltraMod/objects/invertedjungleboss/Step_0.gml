event_inherited()

if walk > 0
{
	walk -= 1
	if walk <= 0
	{
		alarm[4] = 5;
	}
	motion_add(chargeDirection,acc);
	direction = chargeDirection;
	with instance_create(x,y,Leaf)
		depth = other.depth;
	instance_create(x,y,Dust);
	instance_create(x,y,WallBreak);
	
	if speed > maxChargeSpeed
		speed = maxChargeSpeed
}
else if speed > maxSpeed
	speed = maxSpeed;
if speed > 1
{
	meleedamage = activeMeleDamage;	
}
else 
{
	meleedamage = 0;	
}
if !halfHealth && my_health < maxhealth * 0.5
{
	halfHealth = true;
	repeat(8)
	{
		var dis = random_range(4,12);
		var dir = random(360);
		var xx = x+lengthdir_x(dis,dir);
		var yy = y+lengthdir_y(dis,dir);
		with instance_create(xx,yy,Smoke)
		{
			motion_add(dir,random_range(1,3));	
		}
		with instance_create(xx,yy,Dust)
		{
			motion_add(dir,random_range(2,4));
			sprite_index = sprLeaf;
		}
		with instance_create(xx,yy,Debris)
		{
			motion_add(dir,random_range(1,3));
		}
		with instance_create(xx,yy,Leaf)
		{
			depth = other.depth;
		}
	}
	event_user(0);
	event_user(0);
	actTime *= 0.8;
}


