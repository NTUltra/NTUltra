image_angle = random(360)
depth = -3;
motion_add(random(360),random(2))
friction = 0.3
image_speed = 0
image_index = random(5)

image_xscale = 0.7
image_yscale = 0.7
rot = (1+random(3))*choose(1,-1)
growspeed = 0.05+random(0.05)
if UberCont.normalGameSpeed == 60
{
	growspeed *= 0.5;
	rot *= 0.5;
}