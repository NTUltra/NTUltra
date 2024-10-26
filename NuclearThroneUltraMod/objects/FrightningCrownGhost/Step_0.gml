// MOVE IT
if hspeed > 0
	right = 1
else if hspeed < 0
	right = -1

if walk > 0
{
	walk -= 1
	motion_add(direction,0.4)
}

if (alarm[0] < 1 && target != noone && instance_exists(target)) {
	motion_add(point_direction(x,y,target.x,target.y),0.6);
}
if place_meeting(x,y,Wall)
	image_alpha = 0.5;
else
	image_alpha = 1;
if speed > maxSpeed
	speed = maxSpeed

