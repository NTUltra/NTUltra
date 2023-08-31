/// @description Magnetize to wall
while place_meeting(x,y,Floor) &&
!place_meeting(x + lengthdir_x(4,originalAngle),
y + lengthdir_y(4,originalAngle),WallHitMe)
{
	x += lengthdir_x(4,originalAngle);
	y += lengthdir_y(4,originalAngle);
}
x += lengthdir_x(1,originalAngle);
y += lengthdir_y(1,originalAngle);
scrForcePosition60fps();
speed = 0;
if instance_exists(GenCont) || instance_exists(Spiral)
	alarm[0] = 60;