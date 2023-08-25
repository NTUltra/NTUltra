/// @description Stick to wall movement

event_inherited()

if walk > 0 && alarm[2] < 1
{
	if place_meeting(x + hspeed, y + vspeed,WallHitMe)
	{
		dir += 180;
		direction += 180;
		event_user(0);
	}
	else if collision_line(x + hspeed,y + vspeed,
	x + lengthdir_x(16,originalAngle) + hspeed,
	y + lengthdir_y(16,originalAngle) + vspeed,
	WallHitMe,false,false)
	{
		var accc = acc;
		if UberCont.normalGameSpeed == 60
			accc *= 0.5;
		motion_add(dir,accc)
	}
	else
	{
		dir += 180;
		direction += 180;
		event_user(0);
	}
	walk -= 1
}
if place_meeting(x,y,Floor) && !place_meeting(x,y,WallHitMe)
{
	x += lengthdir_x(4,originalAngle);
	y += lengthdir_y(4,originalAngle);	
}
if speed > maxSpeed
speed = maxSpeed

