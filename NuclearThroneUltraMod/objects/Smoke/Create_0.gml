if fps_real < fps
{
	instance_destroy();
	exit;
}
image_angle = random(360)
motion_add(image_angle,random(1)+0.5)
friction = 0.1
image_speed = 0
image_index = irandom(5)

image_xscale = 0.8
image_yscale = 0.8
rot = 1 + random_range(-3,3);
growspeed = random(0.005);
growshrink = 0.001
if UberCont.normalGameSpeed == 60
{
	rot *= 0.5;
	growspeed *= 0.5;
	growshrink *= 0.5;
}