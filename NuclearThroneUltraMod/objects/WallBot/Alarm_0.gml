/// @description Magnetize to wall
while place_meeting(x,y,Floor) && !place_meeting(x,y,WallHitMe)
{
	x += lengthdir_x(4,originalAngle);
	y += lengthdir_y(4,originalAngle);	
}
speed = 0;
if instance_exists(GenCont) || instance_exists(Spiral)
	alarm[0] = 20;