/// @description Magnetize to wall
x += lengthdir_x(1,originalAngle);
y += lengthdir_y(1,originalAngle);
while place_meeting(x,y,Floor) &&
	!collision_line(x + hspeed,y + vspeed,
	x + lengthdir_x(16,originalAngle) + hspeed,
	y + lengthdir_y(16,originalAngle) + vspeed,
	WallHitMe,false,false) 
{
	x += lengthdir_x(4,originalAngle);
	y += lengthdir_y(4,originalAngle);
}
scrForcePosition60fps();
speed = 0;
if instance_exists(GenCont) || instance_exists(Spiral)
	alarm[0] = 60;