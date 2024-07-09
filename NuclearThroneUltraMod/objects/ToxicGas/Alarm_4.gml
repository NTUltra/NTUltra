/// @description Wall collision
if place_meeting(x,y,Wall)
{
	move_bounce_solid(false)
	speed *= 0.5;
	move_outside_solid(direction,16);
}
alarm[4] = 1;