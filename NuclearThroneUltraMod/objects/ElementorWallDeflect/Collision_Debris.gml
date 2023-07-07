/// @description Bounce off
with other
{
	move_bounce_solid(false)
	speed *= 0.8;

	if speed < 0.01
	instance_destroy()
}