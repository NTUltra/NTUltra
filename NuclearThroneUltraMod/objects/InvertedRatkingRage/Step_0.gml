event_inherited()

if walk > 0
{
walk -= 1
motion_add(mydir,1.5)
if walk <= 0
	instance_destroy()
}
else if speed > 0.5
	speed -= 0.5;
if speed > 7
speed = 7

