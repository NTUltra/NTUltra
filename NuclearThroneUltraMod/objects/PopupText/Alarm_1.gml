/// @description blink
if blink
{
	alarm[1] = 2
	vspeed = 0
	if visible = 1
		visible = 0
	else
		visible = 1
}
else
	alarm[1]=1;

time -= 1
if time < 0
	instance_destroy()