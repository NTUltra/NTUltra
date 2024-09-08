spawned = 0
image_speed = 0.4
alarm[0] = 4


var dir = random(360)
var angstep = 360/5;
repeat(4)
{
	with instance_create(x,y,Dust)
		motion_add(dir,4+random(1))
	dir += angstep
}