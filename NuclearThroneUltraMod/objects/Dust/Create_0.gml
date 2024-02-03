depth = 7;
image_angle = random(360)
motion_add(image_angle,random(2))
friction = 0.3
image_speed = 0
image_index = irandom(5)
depth = 1;
image_xscale = 0.7
image_yscale = 0.7
rot = 1 + random_range(-3,3);
growspeed = 0.05+random(0.05)
growshrink = 0.02;
if instance_exists(Player)
{
	if Player.area=101 || Player.area == 122
		sprite_index=sprBubble;
}
else if instance_exists(BackCont) && BackCont.area=101 || BackCont.area == 122
	sprite_index=sprBubble;

alarm[0] = 2;
alarm[1] = 1;