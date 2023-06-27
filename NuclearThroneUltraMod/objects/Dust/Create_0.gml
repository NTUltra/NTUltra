if fps_real < fps
{
	instance_destroy();
	exit;
}
image_angle = random(360)
motion_add(image_angle,random(2))
friction = 0.3
image_speed = 0
image_index = irandom(5)

image_xscale = 0.7
image_yscale = 0.7
rot = 1 + random_range(-3,3);
growspeed = 0.05+random(0.05)
growshrink = 0.02;
if UberCont.normalGameSpeed == 60
{
	rot *= 0.5;
	growspeed *= 0.5;
	growshrink *= 0.5;
}
if instance_exists(Player)
{if Player.area=101 || Player.area == 122
sprite_index=sprBubble;
}
else if BackCont.area=101 || BackCont.area == 122
sprite_index=sprBubble;

